# Advpl-Stack-Dump
Dump Protheus call stack to text file


### Sintaxe
```xBase
u_StackDump(cPath,cFile)
```


### Parameters
| Parameter | Description |
| --- | --- |
| cPath | Path for generating the file, if empty it will generate in the system |
| cFile | File name (With extension), if empty it will generate a name (date and time) [^1] |


[^1]: File will be named like ```stack_dump_yyyymmdd_hhmmss```
