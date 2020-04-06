let n = Int(readLine()!)!
var result = 0
let input = readLine()!.split(separator: " ").map({Int($0)!})
let num = Int( readLine()!)!

for item in input {
    if num == item {
        result += 1
    }
}
print(result)
