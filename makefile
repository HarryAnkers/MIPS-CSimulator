simulator:
	g++ -std=c++11 src/simulator.cpp src/r_instruction.cpp src/i_instruction.cpp src/j_instruction.cpp -o bin/mips_simulator

testbench:
	bash bash.sh
