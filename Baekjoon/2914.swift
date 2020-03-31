import Foundation
let arr = readLine()!.split(separator: " ").map({ Int($0)! })
print(Int(floor(Double(arr[0]*(arr[1]-1))))+1)
