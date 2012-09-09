#include <stdio.h>
#include <stdlib.h>

/* Bitwise AND (&) requires both bits to be 1 to result in a 1:
	1001
  & 1100
    ----
    1000
*/
int and(int a, int b) {
	return 0;
}

/* Bitwise OR (|) requires either bit to be 1 to result in a 1:
	1001
  | 1100
    ----
    1101
*/
int or(int a, int b) {
	return 0;
}

/* Bitwise XOR (^) or "exclusive or" requires both bits to be different to result in a 1:
	1001
  ^ 1100
    ----
    0101
*/
int xor(int a, int b) {
	return 0;	
}

int main(int argc, const char **argv) {
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
