let input = readLine()!.split(separator: " ").map({Int($0)!})
let result = input[0] * input[1] - input[2]
if result > 0 {
    print(result)
} else {
    print(0)
}
