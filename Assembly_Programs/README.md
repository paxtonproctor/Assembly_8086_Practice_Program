## This folder holds all of my practice programs
## Notes:
### AX – This is the accumulator. It is of 16 bits and is divided into two 8-bit registers AH and AL to also perform 8-bit instructions. It is generally used for arithmetical and logical instructions but in 8086 microprocessor it is not mandatory to have accumulator as the destination operand.

### BX – This is the base register. It is of 16 bits and is divided into two 8-bit registers BH and BL to also perform 8-bit instructions. It is used to store the value of the offset.

### CX – This is the counter register. It is of 16 bits and is divided into two 8-bit registers CH and CL to also perform 8-bit instructions. It is used in looping and rotation.

### DX – This is the data register. It is of 16 bits and is divided into two 8-bit registers DH and DL to also perform 8-bit instructions. It is used in multiplication an input/output port addressing.

### SP – This is the stack pointer. It is of 16 bits. It points to the topmost item of the stack. If the stack is empty the stack pointer will be (FFFE)H. It’s offset address relative to stack segment.

### BP – This is the base pointer. It is of 16 bits. It is primary used in accessing parameters passed by the stack. It’s offset address relative to stack segment.

### SI – This is the source index register. It is of 16 bits. It is used in the pointer addressing of data and as a source in some string related operations. It’s offset is relative to data segment.

### DI – This is the destination index register. It is of 16 bits. It is used in the pointer addressing of data and as a destination in some string related operations.It’s offset is relative to extra segment.