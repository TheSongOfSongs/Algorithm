let num = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<num {
    let input = readLine()!.split(separator: " ").map( { Int($0)!})
    var n1: Int
    var n2: Int
    if input[0] > input[1] {
        n1 = input[0]
        n2 = input[1]
    } else {
        n1 = input[1]
        n2 = input[0]
    }

    repeat {
        let temp = n1
        n1 = n2
        n2 = temp%n2
    } while n2 > 0


    arr.append(input[0] * input[1] / n1)
}
for i in 0..<num { print(arr[i]) }
