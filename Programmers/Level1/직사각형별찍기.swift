import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var str = ""
for _ in 0..<b {
    for _ in 0..<a {
        str.append("*")
    }
    print(str)
    str = ""
}

