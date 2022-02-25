# Dynamic/PipelineProcessor
>   Simple Tomasulo based processor back-end using VHDL.



## Table of contents
* [General Info](#general-information)
* [Parts](#parts)
* [Setup](#setup)
* [Acknowledgements](#acknowledgements)


## General Information
Implement the core of a dynamic processor pipeline based on tomasulo's algorithm.
Its basic elements are: 

* Reservation Stations 
* Functional Units 
* Register File (Register Result Status)
* Common Data Bus (CDB)
* Interconnections

Controlling and accessing the Common Data Bus is pipelined in two cycles. 
* First cycle [^1]  – A check for access arbitration 
* Second cycle [^2] -  Broadcast of the tag (Q) from
the selected module in the rest of the system

### Reservation Stations 
* Logic CDB Q to keep CDB V (5 bits)

### Functional Units 
* Logic functions OR/AND/NOT - Delay 2 cycles
* Arithmetic functions (+/-) - Delay 3 cycles


### Register File (Register Result Status)
* Read from register specifier
* Write from CDB (Q,V)
* 2 ports

### Common Data Bus (CDB)
* Datapath control
* Port for FUs and RF

### Issue
| Command | Description | Length |
| --- | --- | --- |
| Issue | Instruction for issue | 1 bit |
| FUtype | Instruction for issue | 1 bit |
| FUop| Instruction for issue | 1 bit |
| Ri| Instruction for issue | 1 bit |
| Rj| Instruction for issue | 1 bit |
| Rk| Instruction for issue | 1 bit |
| Accepted| Instruction for issue | 1 bit |






> consider for example that the command under decoding is the add r1, r2, r3 (issue = 1, FU-
type = 01, Fop = 00, Ri = 1, Rj = 2, Rk = 3)


### Interconnections

## Parts
* Tomasulo algorithm
* Tomasulo + Reorder Buffer + Ld/St Queue

## Setup
Xilinx ISE® design suite 13.7 and above

## Acknowledgements
* This project was created for the requirements of the lesson Computer Architecture

[^1]: One cycle before the completion of the operation
[^2]: As well as its notification result (V).
