/*************************************************************************
	> File Name: practice_2.12.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-10 Tue 14:55:50 CST
 ************************************************************************/

#include <stdio.h>
/*
Write C expressions, in terms of variable x, for the following values. Your code
should work for any word size w ≥ 8. For reference, we show the result of evalu-
ating the expressions for x = 0x87654321, with w = 32.
A. The least significant byte of x, with all other bits set to 0. [0x00000021].
B. All but the least significant byte of x complemented, with the least significant
byte left unchanged. [0x789ABC21].
C. The least significant byte set to all 1s, and all other bytes of x left unchanged.
[0x876543FF].
*/

int main(void)
{
	int x = 0x87654321;
	printf("A. 0x%.8X\n", x&0xFF);
	printf("B. 0x%.8X\n", x^~0xFF);
	printf("C. 0x%.8X\n", x|0xFF);
	return 0;
}
