#include <vector>
#include <limits>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <algorithm>
#include <filesystem>

#include <filesTools/FilesTools.h>
#include <circuits/Circuit.h>
#include <generators/Parser.h>
#include <generators/TruthTable.h>
#include <thread_pool/ThreadPool.h>
#include <circuits/CircuitsParameters.h>
#include <generators/SimpleGenerators.h>
#include <generators/Genetic/GenGenerator.h>
#include <AuxiliaryMethods/AuxiliaryMethods.h>
#include <generators/Genetic/GeneticParameters.h>

#include "DataBaseGenerator.h"

using namespace std::chrono;
using namespace Threading;

void DataBaseGenerator::generateType(
    const DataBaseGeneratorParameters &i_dbgp,
    bool parallel, bool createIdDirectories)
{

    std::string s = i_dbgp.getGenerationTypeString();
    std::function<void(const GenerationParameters &)> generator = getGenerateMethod(s);
    // TODO: make normal code
    std::string dir = d_settings->getDatasetPath();

    if (createIdDirectories)
        dir += "/" + i_dbgp.getGenerationParameters().getName() + "/" + i_dbgp.getGenerationParameters().getRequestId();
    // Creating nested directories
    std::filesystem::create_directories(dir);

    d_mainPath = dir + "/";
    d_dirCount = 0;
    // std::cout << "Inside of generateType: " << std::endl;
    // std::cout << "dir = " << dir << std::endl;
    // std::cout << "i_dbgp.getGenerationParameters().getRequestId() returned: " << i_dbgp.getGenerationParameters().getRequestId() << std::endl;
    // std::cout << "i_dbgp.getMaxInputs() returned: " << i_dbgp.getMaxInputs() << std::endl;
    // std::cout << "i_dbgp.getMinInputs() returned: " << i_dbgp.getMinInputs() << std::endl;
    // std::cout << "i_dbgp.getMaxOutputs() returned: " << i_dbgp.getMaxOutputs() << std::endl;
    // std::cout << "i_dbgp.getMinOutsputs() returned: " << i_dbgp.getMinOutputs() << std::endl;
    if (std::filesystem::is_directory(dir))
    {
        for (const auto item : FilesTools::getDirectories(dir))
        {
            std::string s0 = item;
            auto pos = s0.find(d_settings->getGenerationMethodPrefix(s));

            if (pos == std::string::npos)
                continue;

            s0.replace(pos, d_settings->getGenerationMethodPrefix(s).size(), "");

            auto jk = std::min(s0.find("_"), s0.find("."));
            if (jk == std::string::npos)
            {
                jk = s0.size();
            }

            s0 = s0.substr(0, jk);

            d_dirCount = std::max(d_dirCount, std::stoi(s0) + 1); // TODO: in general code n is int32, is it really need?
        }
    }

    std::vector<std::uint_fast32_t> seeds(i_dbgp.getEachIteration());

    auto randGeneratorLambda = []()
    {
        return AuxMethods::getRandInt(0, INT_MAX);
    };
    // we create int sequence, wich would give us diffetent seeds for each repeat
    std::generate(seeds.begin(), seeds.end(), randGeneratorLambda);

    ThreadPool pool(d_settings->getNumThread());

    for (int i = i_dbgp.getMinInputs(); i <= i_dbgp.getMaxInputs(); ++i)
    {
        for (int j = i_dbgp.getMinOutputs(); j <= i_dbgp.getMaxOutputs(); ++j)
        {
            auto iter = seeds.begin();
            d_parameters.setInputs(i);
            d_parameters.setOutputs(j);

            if (parallel)
            {
                for (int tt = 0; tt < i_dbgp.getEachIteration(); ++tt)
                {
                    d_parameters.setIteration(tt);
                    d_parameters.setName(d_settings->getGenerationMethodPrefix(s) + std::to_string(d_dirCount));

                    GenerationParameters param = d_parameters.getGenerationParameters();
                    param.setSeed(*iter);

                    auto runGenerator = [generator, param]()
                    {
                        generator(param);
                    };

                    pool.submit(runGenerator);

                    ++d_dirCount;
                    ++iter;
                }

                pool.wait();
            }
            else
            {
                for (int tt = 0; tt < i_dbgp.getEachIteration(); ++tt)
                {
                    // TODO: it is that Rustam told about iteration?
                    d_parameters.setIteration(tt);
                    d_parameters.setName(d_settings->getGenerationMethodPrefix(s) + std::to_string(d_dirCount));

                    GenerationParameters param = d_parameters.getGenerationParameters();
                    param.setSeed(*iter);

                    generator(param);

                    ++d_dirCount;
                    ++iter;
                }
            }
        }
    }
}

void DataBaseGenerator::generateDataBaseFromRandomTruthTable(const GenerationParameters &i_param)
{
    TruthTable tt(i_param.getInputs(), i_param.getOutputs(), {});
    tt.setSeed(i_param.getSeed());
    tt.generateRandom({i_param.getInputs(), i_param.getOutputs()});

    SimpleGenerators tftt;
    tftt.setGatesInputsInfo(i_param.getGatesInputsInfo());

    std::vector<std::pair<std::string, std::vector<std::string>>> circs;

    if (i_param.getCNF().getCNFT())
        circs.push_back({"CNFT", tftt.cnfFromTruthTable(tt, true)});

    if (i_param.getCNF().getCNFF())
        circs.push_back({"CNFF", tftt.cnfFromTruthTable(tt, false)});

    for (const auto &[name, expr] : circs)
    {
        Parser pCNFT(expr);
        pCNFT.parseAll();

        OrientedGraph graph = pCNFT.getGraph();
        Circuit c(&graph, expr);
        c.setTable(tt);
        c.setPath(d_mainPath);
        c.setCircuitName(i_param.getName() + "_" + name);
        c.generate(
            i_param.getMakeFirrtl(),
            i_param.getMakeBench(),
            i_param.getCalculateStatsAbc(),
            i_param.getLibraryName(),
            i_param.getMakeOptimizedFiles());
    }
}

void DataBaseGenerator::generateDataBaseRandLevel(const GenerationParameters &i_param)
{
    SimpleGenerators generator(i_param.getSeed());
    generator.setGatesInputsInfo(i_param.getGatesInputsInfo());

    OrientedGraph graph = generator.generatorRandLevel(
        i_param.getRandLevel().getMinLevel(),
        i_param.getRandLevel().getMaxLevel(),
        i_param.getRandLevel().getMinElements(),
        i_param.getRandLevel().getMaxElements(),
        i_param.getInputs(),
        i_param.getOutputs());

    Circuit c(&graph);
    c.setPath(d_mainPath);
    c.setCircuitName(i_param.getName());
    c.generate(
        i_param.getMakeFirrtl(),
        i_param.getMakeBench(),
        i_param.getCalculateStatsAbc(),
        i_param.getLibraryName(),
        i_param.getMakeOptimizedFiles());
}

void DataBaseGenerator::generateDataBaseRandLevelExperimental(const GenerationParameters &i_param)
{
    SimpleGenerators generator(i_param.getSeed());
    generator.setGatesInputsInfo(i_param.getGatesInputsInfo());

    auto start = high_resolution_clock::now();
    OrientedGraph graph = generator.generatorRandLevelExperimental(
        i_param.getRandLevel().getMinLevel(),
        i_param.getRandLevel().getMaxLevel(),
        i_param.getRandLevel().getMinElements(),
        i_param.getRandLevel().getMaxElements(),
        i_param.getInputs(),
        i_param.getOutputs());

    auto stop = high_resolution_clock::now();
    auto duration = duration_cast<microseconds>(stop - start);
    std::clog << "Time taken on experimental: " << duration.count() << " microseconds" << std::endl;

    std::clog << "Update started\n";
    Circuit c(&graph);
    std::clog << "Update ended\n";
    c.setPath(d_mainPath);
    c.setCircuitName(i_param.getName());

    c.generate(
        i_param.getMakeFirrtl(),
        i_param.getMakeBench(),
        i_param.getCalculateStatsAbc(),
        i_param.getLibraryName(),
        i_param.getMakeOptimizedFiles());
}

void DataBaseGenerator::generateDataBaseNumOperations(const GenerationParameters &i_param)
{
    SimpleGenerators generator(i_param.getSeed());
    generator.setGatesInputsInfo(i_param.getGatesInputsInfo());

    std::vector<std::pair<std::string, OrientedGraph>> circs;
    circs.push_back({"NumOperation",
                     generator.generatorNumOperation(
                         i_param.getInputs(),
                         i_param.getOutputs(),
                         i_param.getNumOperations().getLogicOpers(),
                         i_param.getNumOperations().getLeaveEmptyOut())});

    for (auto [name, graph] : circs)
    {
        Circuit c(&graph);
        c.setPath(d_mainPath);
        c.setCircuitName(i_param.getName());
        c.generate(
            i_param.getMakeFirrtl(),
            i_param.getMakeBench(),
            i_param.getCalculateStatsAbc(),
            i_param.getLibraryName(),
            i_param.getMakeOptimizedFiles());
    }
    // TODO: remake all generates to return value and call graphToVerilog
}

void DataBaseGenerator::generateDataBaseGenetic(const GenerationParameters &i_param)
{
    i_param.getGenetic().setInputs(i_param.getInputs());
    i_param.getGenetic().setOutputs(i_param.getOutputs());

    GeneticGenerator<TruthTable, TruthTableParameters> gg(GeneticParameters(i_param.getGenetic()),
                                                          {i_param.getInputs(), i_param.getOutputs()},
                                                          d_mainPath);
    // gg.generate();
}

void DataBaseGenerator::GenerateDataBaseSummator(GenerationParameters &i_param)
{
    SimpleGenerators sg(i_param.getSeed());
    sg.setGatesInputsInfo(i_param.getGatesInputsInfo());

    int bits = i_param.getInputs();
    bool overflowIn = i_param.getSummator().OverFlowIn;
    bool overflowOut = i_param.getSummator().OverFlowOut;
    bool minus = i_param.getSummator().minus;
    OrientedGraph graph = sg.generatorSummator(bits, overflowIn, overflowOut, minus);
    Circuit c(&graph);
    c.setPath(d_mainPath);
    c.setCircuitName(i_param.getName());
    c.generate(
        i_param.getMakeFirrtl(),
        i_param.getMakeBench(),
        i_param.getCalculateStatsAbc(),
        i_param.getLibraryName(),
        i_param.getMakeOptimizedFiles());
}

void DataBaseGenerator::GenerateDataBaseComparison(const GenerationParameters &i_param)
{
    SimpleGenerators sg(i_param.getSeed());
    sg.setGatesInputsInfo(i_param.getGatesInputsInfo());

    int bits = i_param.getInputs();
    bool compare0 = i_param.getComparison().compare0;
    bool compare1 = i_param.getComparison().compare1;
    bool compare2 = i_param.getComparison().compare2;
    OrientedGraph graph = sg.generatorComparison(bits, compare0, compare1, compare2);
    Circuit c(&graph);
    c.setPath(d_mainPath);
    c.setCircuitName(i_param.getName());
    c.generate(
        i_param.getMakeFirrtl(),
        i_param.getMakeBench(),
        i_param.getCalculateStatsAbc(),
        i_param.getLibraryName(),
        i_param.getMakeOptimizedFiles());
}

void DataBaseGenerator::GenerateDataBaseEncoder(const GenerationParameters &i_param)
{
    SimpleGenerators sg(i_param.getSeed());
    sg.setGatesInputsInfo(i_param.getGatesInputsInfo());

    int bits = i_param.getInputs();
    OrientedGraph graph = sg.generatorEncoder(bits);
    Circuit c(&graph);
    c.setPath(d_mainPath);
    c.setCircuitName(i_param.getName());
    c.generate(
        i_param.getMakeFirrtl(),
        i_param.getMakeBench(),
        i_param.getCalculateStatsAbc(),
        i_param.getLibraryName(),
        i_param.getMakeOptimizedFiles());
}

std::function<void(const GenerationParameters &)> DataBaseGenerator::getGenerateMethod(const std::string &i_methodName)
{
    if (i_methodName == "FromRandomTruthTable")
        return std::bind(&DataBaseGenerator::generateDataBaseFromRandomTruthTable, this, std::placeholders::_1);
    if (i_methodName == "RandLevel")
        return std::bind(&DataBaseGenerator::generateDataBaseRandLevel, this, std::placeholders::_1);
    if (i_methodName == "RandLevelExperimental")
        return std::bind(&DataBaseGenerator::generateDataBaseRandLevelExperimental, this, std::placeholders::_1);
    if (i_methodName == "NumOperation")
        return std::bind(&DataBaseGenerator::generateDataBaseNumOperations, this, std::placeholders::_1);
    if (i_methodName == "Genetic")
        return std::bind(&DataBaseGenerator::generateDataBaseGenetic, this, std::placeholders::_1);

    std::cout << "UNDEFINED FUNC << " << i_methodName << std::endl;
    return std::bind(&DataBaseGenerator::generateDataBaseFromRandomTruthTable, this, std::placeholders::_1);
}
