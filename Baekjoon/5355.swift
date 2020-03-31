import Foundation

let num = Int(readLine()!)!
var arr: [Float] = Array()

func solution() -> Float {
    let arr = readLine()!.split(separator: " ")
    var val = Float(arr[0])!
    for i in 1..<arr.count {
        let temp = arr[i]
        switch temp {
        case "@":
            val *= 3
        case "%":
            val += 5
        case "#":
            val -= 7
        default:
            continue
        }
    }

    return round(val*100)/100
}

for _ in 0..<num { arr.append(solution()) }
for i in 0..<num { print(String(format: "%.2f", arr[i])) }
