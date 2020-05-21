let one = [" "]
let two = ["A", "B", "C"]
let three = ["D", "E", "F"]
let four = ["G", "H", "I"]
let five = ["J", "K", "L"]
let six = ["M", "N", "O"]
let seven = ["P", "Q", "R", "S"]
let eight = ["T", "U", "V"]
let nine = ["W", "X", "Y", "Z"]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let p = input[0]
let w = input[1]

let str = Array(readLine()!)
var result: Int = 0
var priorGroup = one

for ch in str {
    var currentGroup: [String]?
    switch ch {
    case "A", "B", "C":
        currentGroup = two
    case "D", "E", "F":
        currentGroup = three
    case "G", "H", "I":
        currentGroup = four
    case "J", "K", "L":
        currentGroup = five
    case "M", "N", "O":
        currentGroup = six
    case "P", "Q", "R", "S":
        currentGroup = seven
    case "T", "U", "V":
        currentGroup = eight
    case "W", "X", "Y", "Z":
        currentGroup = nine
    default:
        currentGroup = one
    }

    if currentGroup == priorGroup && currentGroup != one {
        result += w
    }

    result += ((currentGroup?.firstIndex(of: String(ch)) ?? 0) + 1) * p
    if currentGroup != nil {
        priorGroup = currentGroup!
    }
}

print(result)
