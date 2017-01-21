/*************************************************************************
  > File Name: recursive_call.c
  > Author: Netcan
  > Blog: http://www.netcan666.com
  > Mail: 1469709759@qq.com
  > Created Time: 2017-01-21 Sat 15:25:17 CST
 ************************************************************************/

int rfact(int n)
{
	int result;
	if (n <= 1)
		result = 1;
	else
		result = n * rfact(n-1);
	return result;
}
