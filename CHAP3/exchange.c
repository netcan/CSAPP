/*************************************************************************
	> File Name: exchange.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-13 Fri 15:44:42 CST
 ************************************************************************/


int exchange(int *xp, int y) {
	int  x = *xp;
	*xp = y;
	return x;
}
