

## Table of contents
* [General Info](#general-information)
* [Components](#components)
* [Schematic](#schematic)
* [Acknowledgements](#acknowledgements)


## General Information
1. Command validation functionality
2. Memory access capability via a unified 

1. Reorder buffer
2. Ld / St memory access queue 





## Components
### Reorder Buffer
* Replace register file
* Queue => fills in issue command <br>
      &emsp; &emsp; &ensp;  =>empties serially when the command in the queue head has completed. 

### Ld / St memory access queue

* Memory access through a unified memory access queue (Load / Store Queue). 
* Fills and empties like queue. 
* Load / Store queue =>retains fields addresses <br>
 &emsp; &emsp; &ensp; &emsp; &ensp; &emsp; &ensp; &emsp; &ensp;=>compares for memory dependencies. 





## Schematic
https://github.com/z1skgr/Tomasulo-BASED-processor/issues/2#issue-1151794102

For more details, see [doc](https://github.com/z1skgr/Tomasulo-BASED-processor/tree/main/3/docs/schematics)

## Acknowledgements
* This project was created for the requirements of the lesson Computer Architecture



