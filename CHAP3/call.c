/*************************************************************************
  > File Name: call.c
  > Author: Netcan
  > Blog: http://www.netcan666.com
  > Mail: 1469709759@qq.com
  > Created Time: 2017-01-20 Fri 15:38:59 CST
 ************************************************************************/


int swap_add(int *xp, int *yp)
{
	int x = *xp;
	int y = *yp;
	*xp = y;
	*yp = x;
	return x + y;
}
int caller()
{
	int arg1 = 534;
	int arg2 = 1057;
	int sum = swap_add(&arg1, &arg2);
	int diff = arg1 - arg2;
	return sum * diff;
}
