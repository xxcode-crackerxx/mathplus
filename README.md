# Mathplus

A simple C library for mathematics and sorting functions.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Removal](#removal)

## Installation

To install the library in your shell:

Clone the repo to your machiene:
```bash
git clone https://github.com/xxcode-crackerxx/mathplus.git
```

Then install it to your local shell using:
```bash
sudo make install
```

## Usage

Below is a code snippet to demonstrate how to use the library and the factorial function also :) :

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

## Uninstall

In case if you didn't like the library(my deep apologies), run the command below:

```bash
sudo rm -f /usr/local/include/mathplus.h /usr/local/lib/libmathplus.a
```

## To-Do List

  * change mathplus.c to factorial.c
  * add combination.c with a combination function
  * make algorithms.c and add
  * euclidean algorithm
  * bubble-sort
  * quick-sort(i know it is included in stdlib.h ,but let me have it)
  * selection-sort
  * intersection-sort
