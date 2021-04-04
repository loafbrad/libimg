#!/bin/bash
verilator -Wall --cc test.sv --exe --build sim_main.cpp #from: https://www.veripool.org/projects/verilator/wiki/Manual-verilator#EXAMPLE-C-EXECUTION
