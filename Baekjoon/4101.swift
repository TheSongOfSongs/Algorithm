var arr: [[Int]] = []
var n1: Int
var n2: Int

repeat {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    n1 = input[0]
    n2 = input[1]
    arr.append([n1, n2])
} while n1 != 0 && n2 != 0

for i in 0..<arr.count-1 {
    if arr[i][0] > arr[i][1] {
        print("Yes")
    } else {
        print("No")
    }
}
