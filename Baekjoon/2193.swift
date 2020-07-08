import Foundation

let n = Int(readLine()!)!
var temp1 = 1
var temp2 = 1
var result = 2

if n >= 3 {
    for _ in 3...n {
        result = temp1 + temp2
        temp1 = temp2
        temp2 = result
    }
    print(result)
} else {
    print(1)
}
