import Foundation

func solution(_ food:[Int]) -> String {
    var result = "0"
    let foodCount = food.count-1
    
    for (_, count) in stride(from: foodCount, through: 1, by: -1).enumerated() {
        let new = Array(repeating: "\(count)", count: food[count]/2).reduce("", +)
        result = "\(new)\(result)\(new)"
    }
    
    return result
}
