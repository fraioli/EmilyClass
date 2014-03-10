//
//	class1.c
//	EmilyClass
//
//	Created by Nick Fraioli on 9/8/12.
//	Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int subtractRun(int argc, const char **argv) {
	
	if (argc != 3) {
		fprintf(stderr, "Usage: subtract <digit1> <digit2>\n");
		return 1;
	}
	
	char firstNumber = argv[1][0];
	char secondNumber = argv[2][0];
	int difference = 0;
	
	/*
	 Write code here. Take the difference of the first and second number (firstNumber - secondNumber),
	 and set 'difference' to that value.
	*/
    difference = firstNumber - secondNumber;

	printf("The difference is %d\n", difference);
	return 0;
}
