import Foundation

let T = Int(readLine()!)!
var result: [String] = []
for _ in 0..<T {
    let num = Int(readLine()!)!
    var credit: Double = 0
    var sum: Double = 0

    for _ in 0..<num {
        let input = readLine()!.split(separator: " ").map({Double($0)!})
        credit += input[0]
        sum += input[0] * input[1]
    }

    let gpa = String(format: "%.1f", sum/credit)
    result.append("\(Int(credit)) \(gpa)")
}

for item in result {
    print(item)
}
