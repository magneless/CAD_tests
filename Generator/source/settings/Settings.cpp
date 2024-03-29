#include <memory>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <filesystem>

#include "Settings.h"

std::shared_ptr<Settings> Settings::d_singleton = nullptr;

std::shared_ptr<Settings> Settings::getInstance(const std::string &i_value)
{
    /**
     * This is a safer way to create an instance. instance = new Singleton is
     * dangeruous in case two instance threads wants to access at the same time
     */
    if (d_singleton.get() == nullptr)
    {
        d_singleton.reset(new Settings(i_value));
        d_singleton->loadSettings();
    }
    return d_singleton;
}

void Settings::loadSettings()
{
    for (const auto &[key, value] : d_logicOperations)
    {
        int i = value.second;
        if (d_operationsToHierarchy.find(i) == d_operationsToHierarchy.end())
            d_operationsToHierarchy[i] = {};
        d_operationsToHierarchy[i].push_back(value.first);
    }

    for (const auto &[key, value] : d_logicOperations)
        d_operationsToName[value.first] = key;

    if (std::filesystem::exists(d_fileName))
    {
        std::ifstream readFile(d_fileName);

        readFile >> d_csvdataset >> d_fileName >> d_datasetPath >> d_pathToNadezhda;

        int nadezhdaPathsCount;
        readFile >> nadezhdaPathsCount;
        for (int i = 0; i < nadezhdaPathsCount; ++i)
        {
            std::string tool, path;
            readFile >> tool >> path;
            d_nadezhda[tool] = path;
        }

        readFile >> d_numThreads;

        int logicOperationCount;
        readFile >> logicOperationCount;
        for (int i = 0; i < logicOperationCount; ++i)
        {
            std::string operation, operationName, operationId;
            readFile >> operation; // When it comes to input    there have to be empty string at operationName,    so it is unreasonable to read from file.
            if (operation != "input")
            {
                readFile >> operationName;
            }
            else
            {
                operationName = ""; // When we get input there must be empty string in OperationName . Empty string cannot be read from file.
            }
            readFile >> operationId;
            d_logicOperations[operation] = {operationName, std::stoi(operationId)};
        }

        int operationHierarchyCount;
        readFile >> operationHierarchyCount;
        for (int i = 0; i < operationHierarchyCount; ++i)
        {
            int operationId, operationHierarchyCount;
            std::vector<std::string> operations;
            readFile >> operationId >> operationHierarchyCount;

            std::string operation;
            for (int j = 0; j < operationHierarchyCount; ++j)
            {
                if (operationId == 10)
                    operation = ""; // If we get the index 10 it means we deal with input that have empty string as operation and so that
                                    // we cannot read from file.
                else
                    readFile >> operation;
                operations.push_back(operation);
            }
            d_operationsToHierarchy[operationId] = operations;
        }

        int operationsCount;
        readFile >> operationsCount;
        for (int i = 0; i < operationsCount; ++i)
        {
            std::string fromName, toName;
            readFile >> fromName;
            if (fromName == "input")
            {
                fromName = "";
                toName = "input"; // fromName take operation but the operation that input have is empty string so it is gonna take directly input.
            }                     // So that I check it out right here
            else
                readFile >> toName;
            d_operationsToName[fromName] = toName;
        }

        readFile >> d_maxInputs >> d_maxOutputs;
    }
}

std::string Settings::getInstanceName() const
{
    return d_name;
}

std::pair<std::string, int> Settings::getLogicOperation(const std::string &i_op)
{
    return d_logicOperations.at(i_op);
}

std::vector<std::string> Settings::getLogicOperationsKeys()
{
    std::vector<std::string> res;
    for (const auto &[key, value] : d_logicOperations)
        res.push_back(key);

    return res;
}

std::pair<std::vector<bool>, std::vector<std::string>> Settings::getLogicOperationsWithGates(std::vector<std::string> i_notIncluded)
{
    std::vector<std::string> res;
    std::vector<bool> oneGate;
    
    for (const auto &[key, value] : d_logicOperations) {
        if (std::find(i_notIncluded.begin(), i_notIncluded.end(), key) == i_notIncluded.end()) {
            res.push_back(key);
            oneGate.push_back(key == "not" || key == "buf");
        }
    }

    return std::make_pair(oneGate, res);
}

int Settings::getNumThread() const {
    return d_numThreads;
}

std::string Settings::getPathNadezhda() const
{
    return d_pathToNadezhda;
}

std::string Settings::getNadezhdaVar(const std::string &key) const
{
    return d_nadezhda.at(key);
}

std::vector<std::string> Settings::fromOperationsToHierarchy(int key) const
{
    return d_operationsToHierarchy.at(key);
}

std::string Settings::fromOperationsToName(const std::string &i_op) const
{
    return d_operationsToName.at(i_op);
}

void Settings::SaveSettings()
{
    std::ofstream writeFile(d_fileName);
    writeFile << d_csvdataset << ' ' << d_fileName << ' ' << d_datasetPath << ' ' << d_pathToNadezhda << std::endl;

    writeFile << d_nadezhda.size() << std::endl;
    for (const auto &[key, value] : d_nadezhda)
        writeFile << key << ' ' << value << std::endl;

    writeFile << d_numThreads << std::endl;

    writeFile << d_logicOperations.size() << std::endl;
    for (const auto &[key, value] : d_logicOperations)
        writeFile << key << ' ' << value.first << ' ' << value.second << std::endl;

    writeFile << d_operationsToHierarchy.size() << std::endl;
    for (const auto &[key, value] : d_operationsToHierarchy)
    {
        writeFile << key << ' ' << value.size() << std::endl;
        for (const auto &operation : value)
            writeFile << operation << ' ';
        writeFile << std::endl;
    }

    writeFile << d_operationsToName.size() << std::endl;
    for (const auto &[key, value] : d_operationsToName)
        writeFile << key << ' ' << value << std::endl;

    writeFile << d_maxInputs << ' ' << d_maxOutputs << std::endl;
}

std::string Settings::getDatasetPath() const
{
    return d_datasetPath;
}

std::string Settings::getLibraryPath() const
{
    return d_libraryPath;
}

std::string Settings::getGenerationMethodPrefix(const std::string &i_s) const
{
    if (i_s == "FromRandomTruthTable")
        return "CCGRTT";
    if (i_s == "RandLevel")
        return "CCGRCG";
    if (i_s == "RandLevelExperimental")
        return "CCGRCGE";
    if (i_s == "NumOperation")
        return "CCGRVC";
    if (i_s == "Genetic")
        return "CCGGA";

    std::cout << "UNDEFINED METHOD PREFIX << " << i_s << std::endl;

    return "ftt";
}

std::string Settings::getLibraryNameFromEnum(const LibrariesTypes &library) const
{
    switch (library)
    {
    case SKY_LIB:
    default:
        return "sky130.lib";
    }
}

int Settings::getMaxInputs() const
{
    return d_maxInputs;
}

int Settings::getMaxOutputs() const
{
    return d_maxOutputs;
}

std::map<std::string, std::pair<std::string, int>> Settings::getLogicOperations() const
{
    return d_logicOperations;
}
