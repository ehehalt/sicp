// SICP 1.2.1
// Linear Recursion and Iteration

func fact1(for n: Int) -> Int {
    guard n != 1 else { return 1 }
    return n * (fact1(for: (n-1)))
}

// Iterative

func fact2(for n: Int) -> Int {
    func fact2Iter(_ product: Int, _ counter: Int, _ maxCount: Int) -> Int {
        if counter > maxCount {
            return product
        } else {
            return fact2Iter(counter*product, counter+1, maxCount)
        }
    }
    
    return fact2Iter(1, 1, n)
}

print(fact1(for: 7))
print(fact2(for: 7))