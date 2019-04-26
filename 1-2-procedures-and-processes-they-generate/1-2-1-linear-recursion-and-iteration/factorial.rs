fn fact1(n: i64) -> i64 {
    if n == 1 {
        return 1
    } else {
        return n * fact1(n-1)
    }
}

fn fact2(n: i64) -> i64 {
    return fact2iter(1, 1, n)
}

fn fact2iter(product: i64, counter: i64, max_count: i64) -> i64 {
    if counter > max_count {
        return product
    } else {
        return fact2iter(counter*product, counter+1, max_count)
    }
}

// fn main() {
//     print!("{}\n", fact2(7));
//     print!("{}\n", fact1(7));
// }
