import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})
let diagonal = sqrt(Double(input[1]*input[1] + input[2]*input[2]))
var result: [String] = []

for _ in 0..<input[0] {
    let n = Int(readLine()!)!

    if Double(n) <= diagonal {
        result.append("DA")
    } else {
        result.append("NE")
    }
}

for item in result {
    print(item)
}
