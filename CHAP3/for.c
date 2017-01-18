/*************************************************************************
	> File Name: for.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-17 Tue 16:43:29 CST
 ************************************************************************/


int fact(int n) {
	int i;
	int res = 1;
	for (i = 2; i <= n; ++i)
		res *= i;
	return res;
}
