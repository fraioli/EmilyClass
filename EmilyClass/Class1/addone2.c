#include <stdio.h>

// Returns 'base' to the 'power' power
// 	ex: exp(5, 2) == 25
int exponential(int base, int power) {
    while (power > 0) {
        base = base * base;
        power--;
    }
	// Write it out!
	return 0;
}

int addone2Run(int argc, const char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: addone <digit>\n");
		return 1;
	}
	
	const char *number = argv[1];
	int decimalNumber = 0;

	// Convert the string(!) to an integer, add 1, and then print it out.
	int i = 0;
	char curr = number[i];
	while (curr != '\0') {
		// During every loop, 'curr' will be the next character of the string
		// that represents the number.
        decimalNumber = decimalNumber * 10;
        decimalNumber += curr - 48;
		
		curr = number[++i];
	}
    
    decimalNumber++;

	printf("The number is %d\n", decimalNumber);
	return 0;
}
