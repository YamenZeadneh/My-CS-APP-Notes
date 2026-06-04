# Program Encoding in C
![alt text](images/the-compilation-system.png)
##  C compiling   
### Basic Compilation
```
gcc -o ExecutableFile fileName.c
```
- as `gcc` is the compilier name 
- to merge file:
```
gcc -Og -o  ExecutableFile firstfile.c secondfile.c
```
- `-Og` refer to the optimization level as `-O1` `-O2` are higher in performance 
- you  can see th assembly code with `-S` insted of the `-o` 
```
gcc -Og -S code.c
```
### object dump (disassemblers)
```
objdump -d ExecutableFile.o
```
- `-d` is the command-line flag