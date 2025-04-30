# Lab 04 instructions

## Objective

Make the student understand the power of lex language making a C code that
performs the lexical analysis of the ac src program

# Requirements

* Linux machine, either a VM or a bare metal host
* GCC compiler (at least version 4.8)
* lex compiler
* Autotools
* git send mail server installed and configured on your Linux machine

## Instructions

Please generate a LEX code to parse the previous example of lab 03.

A valid line of code in ac could be:

```
// basic code

//float b
f b

// integer a
i a

// a = 5
a = 5

// b = a + 3.2
b = a + 3.2

//print 8.5
p b
```

Your output should be

```
COMMENT
COMMENT
floatdcl id
COMMENT
intdcl id
COMMENT
id assign inum
COMMENT
id assign id plus fnum
COMMENT
print id
```

## How to install
- `sudo apt-get update`
- `sudo apt-get install flex bison`
- `sudo yum install flex bison`

## How to run
- `flex your_file.l`
- `gcc lex.yy.c -o your_executable -lfl`
- `./your_executable < example.txt > output.txt`
