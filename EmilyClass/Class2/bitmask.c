#include <stdio.h>
#include <stdlib.h>

/* Bitwise AND (&) requires both bits to be 1 to result in a 1:
	1001
  & 1100
    ----
    1000
*/
int and(int a, int b) {
    int i = 0;
    int tempNumber = 0;
    int answer;
    
    while (a > 0 || b > 0) {
        if ((a % 2 == 1) && (b % 2 == 1)) {
            tempNumber = 1;
        } else {
            tempNumber = 0;
        }
        int base = 1;
        int j = 0;
        while (j < i) {
            base = base * 2;
            j++;
        }
        answer += tempNumber * base;
        a = a/2;
        b = b/2;
        i++;
    }
	return answer;
}

/* Bitwise OR (|) requires either bit to be 1 to result in a 1:
	1001
  | 1100
    ----
    1101
*/
int or(int a, int b) {
    int answer = 0;
    int i = 0;
    int tempNumber = 0;
    while (a > 0 || b > 0) {
        if ((a % 2 == 1) || (b % 2 == 1)) {
            tempNumber = 1;
        } else {
            tempNumber = 0;
        }
        int base = 1;
        int j = 0;
        while (j < i) {
            base = base * 2;
            j++;
        }
        answer += tempNumber * base;
        a = a/2;
        b = b/2;
        i++;
    }
    
	return answer;
}

/* Bitwise XOR (^) or "exclusive or" requires both bits to be different to result in a 1:
	1001
  ^ 1100
    ----
    0101
*/
int xor(int a, int b) {
    int answer = 0;
    int i = 0;
    int tempNumber = 0;
    while (a > 0 || b > 0) {
        if ((a % 2) + (b % 2) == 1) {
            tempNumber = 1;
        } else {
            tempNumber = 0;
        }
        int j = 0;
        int base = 1;
        while (j < i) {
            base = base * 2;
            j++;
        }        
        answer += tempNumber * base;
        a = a/2;
        b = b/2;
        i++;
    }
	return answer;
}

int bitmaskRun(int argc, const char **argv) {
	if (argc != 3) {
		fprintf(stderr, "Usage: bitmask <num1> <num2>\n");
		return 1;
	}

	int a = atoi(argv[1]);
	int b = atoi(argv[2]);

	// Implement bitwise AND, OR, and XOR to correctly mask the following numbers.
	// (Don't use &, |, or ^ in your implementations.)
	
	printf("%d & %d is %d (should be %d)\n", a, b, and(a, b), a & b);
	printf("%d | %d is %d (should be %d)\n", a, b, or(a, b), a | b);
	printf("%d ^ %d is %d (should be %d)\n", a, b, xor(a, b), a ^ b);
	
	return 0;
}
