// SICP 1.1.4
// Compound Procedures

func square(_ x: Int) -> Int {
    x * x
}

func sum_of_squares(_ x: Int, _ y: Int) -> Int {
    square(x) + square(y)
}

print(square(4))
print(sum_of_squares(3, 4))
