/*************************************************************************
	> File Name: while-do.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-17 Tue 16:23:01 CST
 ************************************************************************/

int fact(int n) {
	int res = 1;
	while(n > 1) {
		res *= n;
		n = n-1;
	}
	return res;
}
