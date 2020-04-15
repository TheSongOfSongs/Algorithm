let input = Int(readLine()!)!
var result = 1

if input == 0 {
    print(1)
} else {
    for i in 1...input {
        result *= i
    }

    print(result)
}
