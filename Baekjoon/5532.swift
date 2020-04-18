public var L = Int(readLine()!)!
var A = Int(readLine()!)!
var B = Int(readLine()!)!
let C = Int(readLine()!)!
let D = Int(readLine()!)!

while A > 0 || B > 0 {
    A -= C
    B -= D
    L -= 1
}

print(L)
