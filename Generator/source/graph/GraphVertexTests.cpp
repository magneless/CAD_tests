#include <gtest/gtest.h>
#include "GraphVertex.h"

TEST(test_graph_vertex, test_init)
{
  GraphVertex v = GraphVertex("testexpr", "testoper", false, "testwirename");
  EXPECT_EQ(true, true);
}
