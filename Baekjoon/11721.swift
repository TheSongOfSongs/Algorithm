import Foundation

let n: String = readLine()!
var str: [String] = []

var i = 0
var temp = ""
for ch in n {
    if i == 10 {
        str.append(temp)
        i = 0
        temp = ""
    }
    temp += String(ch)
    i += 1
}
str.append(temp)

for item in str {
    print(item)
}
