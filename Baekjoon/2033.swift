import Foundation

let input = readLine()!
var n = Int(String(input))!
var ten = 10
var str = String(n)
var i = 0

while !(i == str.count-1) {
    let temp = Int(String(str[str.index(str.startIndex, offsetBy: str.count-1-i)]))!
    if temp >= 5 { n += ten }
    n -= temp * ten/10
    ten *= 10
    i += 1
    str = String(n)
}

print(n)
