function abs(x) {
	return x >= 0 ? x : x === 0 ? 0 : -x;
}

console.log(abs(2));
console.log(abs(-2));
console.log(abs(0));