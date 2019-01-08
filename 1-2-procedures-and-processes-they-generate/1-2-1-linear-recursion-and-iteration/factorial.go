// SICP 1.2.1
// Linear Recursion and Iteration

package main

import "fmt"

func fact1(n int) int {
	if n == 1 {
		return 1
	} else {
		return n * fact1(n-1)
	}
}

// Iterative

func fact2(n int) int {
	return fact2iter(1, 1, n)
}

func fact2iter(product int, counter int, maxcount int) int {
	if counter > maxcount {
		return product
	} else {
		return fact2iter(counter*product, counter+1, maxcount)
	}
}

func main() {
	fmt.Println(fact1(17))
	fmt.Println(fact2(17))
}
