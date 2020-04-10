func fibonacci(num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    } else {
        return fibonacci(num: num-1) + fibonacci(num: num-2)
    }
}

print(fibonacci(num: Int(readLine()!)!))
