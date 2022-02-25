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
* Common Data Bus (CDB), 
* Interconnections

Controlling and accessing the Common Data Bus is pipelined in two cycles. 
* First cycle [^1]  – A check for access arbitration) and 
* Second cycle [^2] -  Broadcast of the tag (Q) from
the selected module in the rest of the system, 

## Parts
* Tomasulo algorithm
* Tomasulo + Reorder Buffer + Ld/St Queue

## Setup
Xilinx ISE® design suite 13.7 and above

## Acknowledgements
* This project was created for the requirements of the lesson Computer Architecture

[^1]: One cycle before the completion of the operation
[^2]: As well as its notification result (V).
