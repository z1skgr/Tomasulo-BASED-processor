# Computer Architecture
 VHDL

# First Workshop Requested <br />
Design of key parts of the system <br />
1) Reservation Stations + Functional Unit + Local Control. <br />
2) Register File. <br />
3) Common Data Bus (CDB) + control. <br />
4) Issue of commands in the system. <br />

**Reservation Station** consists of: <br />
1) numerical Reservation Station. <br />
2) logical Reservation Station. <br />

**Issue Unit** consists of <br />
1) numerical Functional. Unit <br />
2) logical Function Unit. <br />

# Second Workshop Requested <br />
Simple Tomasulo based processor back-end. Connection of  <br />individual components to test total system. Corner case are  tested.

# Third Workshop Requested <br />
Tomasulo based processor back-end modification. The functionality of order validation using a
Buffer Buffer (mandatory), and memory accessibility through a unified Ld/St memory access queue is imported to the system.
Register file(and register status) is replaced with reordered buffer. An additional module, a memory access through a unified
(Load/Store Queue) is added. The structure looks a lot like the Buffer Buffer since it fills and empties like a tail. But the Load/Store queue retains fields memory addresses and compares for memory dependencies.

# How to Run
Import project in Xilinx. The project has been created in an older version of Xilinx. You can create a new empty project and copy it.

