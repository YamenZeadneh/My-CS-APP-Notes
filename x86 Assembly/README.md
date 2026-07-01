# the x86 Assembly reference sheet 
## Data Formats 
![alt text](images/Sizes-of-C-data-types-in-x86-64.png)
## Accessing Information
### Registers map 
![alt text](images/Integer-registers.png)
### Operand Specifiers ( the destination location)
![alt text](images/Operand-form.png)
## the MOV code
- `mov S,D` Will do D ← S
- you can add `b`,`w`,`l`or`q` to mange the data type size like `movq S,D`
- add `z`or`s` befor data size to controle how to deal with the new bits Like `movzbq`
- `z` for zero-extending and `s` for sign-extinding
- add another data type to set the new reg size 
- Examble:`movsbw`Move sign-extended byte to word
## Stack operation
![alt text](images/stack.png)
- useful for evaluating complex math expressions.
##  Arithmetic and Logical Operations
![alt text](images/Integer-arithmetic-operations.png)

## Special Arithmetic Operations
![alt text](images/Special-Arithmetic-Operations.png)
## Condition Codes
- CF: Carry flag. The most recent operation generated a carry out of the most
significant bit. Used to detect overflow for unsigned operations. ` (unsigned) t < (unsigned) a`
- ZF: Zero flag. The most recent operation yielded zero `(t == 0)`
- SF: Sign flag. The most recent operation yielded a negative value. `(t < 0)`
- OF: Overflow flag. The most recent operation caused a two’s-complement
overflow—either negative or positive ` (a < 0 == b < 0) && (t < 0 != a < 0)`
![alt text](images/set-instructions.png)
![alt text](images/Comparison-and-test-instructions.png)