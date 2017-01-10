/*************************************************************************
	> File Name: practice_2.13.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-10 Tue 15:15:14 CST
 ************************************************************************/

/*
The Digital Equipment VAX computer was a very popular machine from the late
1970s until the late 1980s. Rather than instructions for Boolean operations And
and Or, it had instructions bis (bit set) and bic (bit clear). Both instructions take
a data word x and a mask word m. They generate a result z consisting of the bits of
x modified according to the bits of m. With bis, the modification involves setting
z to 1 at each bit position where m is 1. With bic, the modification involves setting
z to 0 at each bit position where m is 1.
To see how these operations relate to the C bit-level operations, assume we
have functions bis and bic implementing the bit set and bit clear operations, and
that we want to use these to implement functions computing bit-wise operations
| and ^, without using any other C operations. Fill in the missing code below.
Hint: Write C expressions for the operations bis and bic.
*/

#include <stdio.h>
int bis(int x, int m) {
	return x | m;
}

int bic(int x, int m) {
	return x & ~m;
}

/* Compute x|y using only calls to functions bis and bic */
int bool_or(int x, int y) {
	int result = bis(x, y);
	return result;
}

/* Compute x^y using only calls to functions bis and bic */
int bool_xor(int x, int y) {
	int result = bic(x, y) + bic(y, x);
	return result;
}

int main(void)
{
	int x = 0x87654321;
	int y = 0x12345678;
	printf("x|y=0x%.8X bool_or(x, y)=%.8X\n", x|y, bool_or(x, y));
	printf("x^y=0x%.8X bool_xor(x, y)=%.8X\n", x^y, bool_xor(x, y));
	return 0;
}
