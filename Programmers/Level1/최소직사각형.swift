import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var min = 0
    var max = 0
    
    for (index, size) in sizes.enumerated() {
        min = Swift.max(min, size.min()!)
        max = Swift.max(max, size.max()!)
    }
    
    return min * max
}
