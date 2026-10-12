# Mathplus

A simple C library for mathematics and sorting functions.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Removal](#removal)

## Installation

To build and install the library system-wide, execute the following command in the terminal:

```bash
sudo make install
```

## Usage

Below is an example demonstrating how to include `mathplus.h` and calculate the factorial of a declared integer (`4`):

```c
#include <stdio.h>
#include <mathplus.h>

int main(void)
{
    int num = 4;
    int result = factorial(num);

    printf("Factorial of %d is: %d\n", num, result);

    return 0;
}
```

To compile a program using the installed library, link it with `-lmathplus`:

```bash
gcc main.c -lmathplus -o main
./main
```

## Removal

To completely remove the installed library headers and binary from your system and shell environment, run:

```bash
sudo rm -f /usr/local/include/mathplus.h /usr/local/lib/libmathplus.a
```
