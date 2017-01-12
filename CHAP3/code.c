/*************************************************************************
  > File Name: code.c
  > Author: Netcan
  > Blog: http://www.netcan666.com
  > Mail: 1469709759@qq.com
  > Created Time: 2017-01-12 Thu 15:20:43 CST
 ************************************************************************/

int accum = 0;
int sum(int x, int y)
{
	int t = x + y;
	accum += t;
	return t;
}
