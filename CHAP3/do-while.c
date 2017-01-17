/*************************************************************************
	> File Name: do-while.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-17 Tue 15:39:51 CST
 ************************************************************************/
int fact_do(int n) {
	int res = 1;
	do {
		res *= n;
		n = n-1;
	} while(n>1);
	return res;
}
