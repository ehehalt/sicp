#include <stdio.h>

int fact1(int n) {
	if (n == 1) {
		return 1;
	} else {
		return n * fact1(n-1);
	}
}

int fact2iter(int product, int counter, int maxCounter) {
	if (counter > maxCounter) {
		return product;
	} else {
		return fact2iter(counter*product, counter+1, maxCounter);
	}
}

int fact2(int n) {
	return fact2iter(1, 1, n);
}

int main() {
	printf("%i\n", fact1(7));
	return 0;
}
