import Foundation

var arr = readLine()!.components(separatedBy: " ").map({Int($0)!})

let a = arr[0]
let b = arr[1]
let c = arr[2]


print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print((a%c)*(b%c)%c)
