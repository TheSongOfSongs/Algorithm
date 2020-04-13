import Foundation

let str = readLine()!
var arr = Array(repeating: 0, count: 26)

for ch in str {
    let val = UnicodeScalar(String(ch))!.value - 97
    arr[Int(val)] += 1
}

var temp = arr.map({String($0)}).reduce("", {$0 + " " + $1})
temp.removeFirst()
print(temp)
