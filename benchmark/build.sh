#!/bin/bash

export CROSS_COMPILE="loongarch64-linux-gnu-"
export CC="${CROSS_COMPILE}gcc"
export CXX="${CROSS_COMPILE}g++"
export AR="${CROSS_COMPILE}ar"
export RANLIB="${CROSS_COMPILE}ranlib"

# export CFLAGS="-O2 -march=loongarch64 -DNO_PERF -Wno-error=format-truncation"
# export CXXFLAGS="-O2 -march=loongarch64 -DNO_PERF -Wno-error=format-truncation"
export CFLAGS="-O2 -march=loongarch64"
export CXX_FLAGS="-O2 -march=loongarch64 -static"
export PFM=0

(cd bench_betweennessCentr && make run)
(cd bench_BFS && make run)
(cd bench_connectedComp && make run)
(cd bench_degreeCentr && make run)
(cd bench_DFS && make run)
(cd bench_gibbsInference && make run)
(cd bench_graphColoring && make run)
(cd bench_graphConstruct && make run)
(cd bench_graphUpdate && make run)
(cd bench_kCore && make run)
(cd bench_pageRank && make run)
(cd bench_shortestPath && make run)
(cd bench_TopoMorph && make run)
(cd ubench_add && make run)
(cd ubench_delete && make run)
(cd ubench_find && make run)
(cd ubench_traverse && make run)