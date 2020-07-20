// SICP 1.1.4
// Compound Procedures

package main

import "fmt"

func square(x int) int {
	return x * x
}

func sum_of_squares(x, y int) int {
	return square(x) + square(y)
}

func main() {
	fmt.Println(square(4))
	fmt.Println(sum_of_squares(3, 4))
}
