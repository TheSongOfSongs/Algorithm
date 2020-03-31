import Foundation

let inputs = readLine()
print(inputs!.components(separatedBy: " ").map({ Int($0)! }).reduce(1, *))
