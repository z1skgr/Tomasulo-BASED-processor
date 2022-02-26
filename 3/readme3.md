

## Table of contents
* [General Info](#general-information)
* [Parts](#parts)
* [Setup](#setup)
* [Acknowledgements](#acknowledgements)


## General Information
Implement the core of a dynamic processor pipeline based on tomasulo's algorithm.
Its basic elements are: 

* _Reservation Stations (RS)_
* _Functional Units (FU)_
* _Register File (Register Result Status)_
* _Common Data Bus (CDB)_
* _Interconnections_

Controlling and accessing the Common Data Bus is pipelined in two cycles. 
* First cycle [^1]  : A check for access arbitration 
* Second cycle [^2] :  Broadcast of the tag (Q) from the selected module in the rest of the system

### Reservation Stations 
* Logic CDB.Q to keep CDB.V (5 bits)
* Connection RS -> FU ( RS.Q)

### Functional Units [^5]
* Logic functions OR/AND/NOT [^3] 
* Arithmetic functions (+/-) [^4]
* Tag, Actions, V share to CDB
* Grant access from CDB to share CDB.Q, CDB.V [^6]



### Register File (Register Result Status)
* Read from Register Specifier
* Write from CDB (Q,V)
* 2 read ports
* During issue, writes in Q the destination register issued the RS code in which the instruction is issued. 
* "Fall-through" [^7]

### Common Data Bus (CDB)
* Datapath control
* 1 port for each FU 
* Multiplexer for data control
* Round Robin client service

### Issue
| Command | Description | Length |
| --- | --- | --- |
| Issue | Instruction for issue | 1 bit |
| FUtype | Command type, 00 = Logical operation, 01 = Arithmetic | 2 bit |
| FUop| LogOP: 00, 01, 10 = OR, AND, NOT <br>ArOP: 00 = +, 01 = -, 10 = <<  | 2 bit |
| Ri| Destination register   | 5 bit |
| Rj| Destination source #1 | 5 bit |
| Rk| Destination source #2 | 5 bit |
| Accepted| Instruction for issue | 1 bit |






> consider for example the command under decoding is ]add r1, r2, r3 (issue = 1, FU-
type = 01, Fop = 00, Ri = 1, Rj = 2, Rk = 3)
> Unit with 2 Logical RS 
> Unit with 3 Arithmetic RS

### Interconnections
* Unit interfaces

### Schematic
https://github.com/z1skgr/Tomasulo-BASED-processor/issues/1#issue-1151689577 <br>

For more details on each individual part see 1/doc



## Acknowledgements
* This project was created for the requirements of the lesson Computer Architecture



[^1]: One cycle before the completion of the operation
[^2]: As well as its notification result (V).
[^3]: Delay 2 cycles
[^4]:  Delay 3 cycles
[^5]: Pipelined
[^6]: One cycle before FU export result
[^7]: Same cycle we have registration in a register (ie match with the CDB.Q) and reading of the same register, new data is read and the tag is read zero
