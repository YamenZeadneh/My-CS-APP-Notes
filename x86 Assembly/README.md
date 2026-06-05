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
##  Arithmetic and Logical Operations
![alt text](Integer-arithmetic-operations.png)