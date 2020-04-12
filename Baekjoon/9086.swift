import Foundation

var arr: [String] = []
for _ in 0..<Int(readLine()!)! {
    let str = readLine()!
    var temp: String = String(str.first!)
    temp.append(str.last!)
    arr.append(temp)
}

for item in arr {
    print(item)
}
