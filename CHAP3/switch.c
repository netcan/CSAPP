/*************************************************************************
	> File Name: switch.c
	  > Author: Netcan
	  > Blog: http://www.netcan666.com
	  > Mail: 1469709759@qq.com
	  > Created Time: 2017-01-19 Thu 15:07:50 CST
 ************************************************************************/

int switch_eg(int x, int n) {
	int result = x;
	switch(n) {
		case 100:
			result *= 13;
			break;

		case 102:
			result += 10;

		case 103:
			result += 11;
			break;

		case 104:
		case 105:
			result *= result;
			break;
		default:
			result = 0;
	}
	return result;
}
