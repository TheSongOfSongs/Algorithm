import Foundation

func solution(_ s:String) -> [Int] {
    let arr = Array(s.split(separator: "}"))
        .map({ $0.split(separator: ",") })
        .map({ $0.map { Int($0.filter { $0.isNumber })! }})
        .sorted(by: { $0.count < $1.count })
    
    var result: [Int] = []
    
    arr.forEach({ num in
        let a = num.filter({ !result.contains($0) }).first!
        result.append(a)
    })
    
    return result
}

