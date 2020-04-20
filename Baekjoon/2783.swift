import Foundation
var arr: [String] = []

var gram = readLine()!.split(separator: " ").map({Double($0)!})
var min = gram[0]/gram[1]*1000

for _ in 0..<Int(readLine()!)! {
    gram = readLine()!.split(separator: " ").map({Double($0)!})
    if min > gram[0]/gram[1]*1000 {
        min = gram[0]/gram[1]*1000
    }
}

print(String(format: "%.2f", min))
