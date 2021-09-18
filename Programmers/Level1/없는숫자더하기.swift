import Foundation

func solution(_ numbers:[Int]) -> Int {
    var numberCheck: [Int?] = []
    for i in 0...9 {
        numberCheck.append(i)
    }
    
    numbers.forEach { number in
        numberCheck[number] = nil
    }
    
    return numberCheck.compactMap({ $0 }).reduce(0, +)
}

print(solution([5,8,4,0,6,7,9]))
