# Dynamic/PipelineProcessor
>   Simple Tomasulo based processor back-end using VHDL.

## Parts
* [Tomasulo algorithm](1/README.md)
* [Tomasulo + Reorder Buffer + Ld/St Queue](3/readme3.md)


## Setup
Xilinx ISE® design suite 13.7 and above

To run the project 

1. Install Xilinx suite from https://www.xilinx.com/downloadNav/vivado-design-tools/archive-ise.html
2. Clone code from [git](https://github.com/z1skgr/Tomasulo-BASED-processor)
3. File > Import > Existing Projects into Workspace > Locate project 
   * Copy projects into workspace if you do want to copy the project files to your current workspace location.

To run the simulation (.wcfg) 
1. Find simulation files in hierarchy
   * Import them if they do not appear
2. Simulate behavioral model
3. Check system behavior based on scenarios (different input signal)

## Acknowledgements
* This project was created for the requirements of the lesson Computer Architecture
