function square(x) {
	return x * x;
}

function sum_of_squares(x, y) {
	return square(x) + square(y);
}

function f(a) {
	return sum_of_squares(a + 1, a * 2);
}

console.log("Square");
console.log(square(6));
console.log(sum_of_squares(2,3));
console.log(f(5));