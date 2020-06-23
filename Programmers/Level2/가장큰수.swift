import Foundation

func solution(_ numbers:[Int]) -> String {
    var numbers = numbers.map({String($0)})

    numbers.sort { (first, second) in
        return first + second > second + first
    }

    let result = numbers.reduce("", +)

    return result.first == "0" ? "0" : result
}
