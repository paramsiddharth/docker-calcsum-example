
#include <stdio.h>

int main() {
	// stdout fix for old GCC in Alpine
	setbuf(stdout, NULL);

	// Read input
	double a, b;
	printf("Enter 2 numbers: ");
	scanf("%lf %lf", &a, &b);

	// Calculate and show the result
	printf("%.2lf * %.2lf = %.2lf\n", a, b, a * b);

	return 0;
}
