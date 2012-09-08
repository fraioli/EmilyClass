#include <stdio.h>

int main(int argc, const char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: addone <digit>\n");
		return 1;
	}
	
	char digit = argv[1][0];

	/*
	Write code here. Convert the character to an integer and then add five to it.
	Print it out at the end.
	*/

	printf("The digit is %d\n", digit);
	return 0;
}
