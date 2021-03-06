#include <stdio.h>
#include <string.h>

int bintodecRun(int argc, const char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: bintodec <binary number>\n");
		return 1;
	}

	const char *binaryRep = argv[1];
	int binaryRepLength = strlen(binaryRep);
	int decimalRep = 0;
    

	/*
	Convert the binary representation string to its corresponding decimal number.
		Ex:
			"1"     => 1
			"10"    => 2
			"10101" => 21
			
		Binary number explanation for 10101:
			1     0     1     0     1
			*     *     *     *     *
		   2^4   2^3   2^2   2^1   2^0
		    =     =     =     =     =
			16 +  0  +  4  +  0  +  1  = 21			
	*/
    
    int i = 0;
    int tempNumber = 0;
    while (i < binaryRepLength) {
        tempNumber = binaryRep[i] - 48;
        int base = 1;
        int j = 0;
        while (j < (binaryRepLength - 1 - i)) {
            base = base * 2;
            j++;
        }
        tempNumber = tempNumber * base;
        decimalRep = decimalRep + tempNumber;
        i++;
    }
    

	printf("The decimal representation of %s is %d\n", binaryRep, decimalRep);
	return 0;
}
