import Foundation

func solution(_ s:String) -> Int {
    
    var result: String = ""
    var characterBuffer: String = ""
    let numbers: [String: Int] = [
        "zero": 0,
        "one": 1,
        "two": 2,
        "three": 3,
        "four": 4,
        "five": 5,
        "six": 6,
        "seven": 7,
        "eight": 8,
        "nine": 9
    ]
    
    for char in s {
        if char.isNumber {
            result.append(char)
        } else {
            characterBuffer.append(char)
            
            if let number = numbers.first(where: { $0.key == characterBuffer })?.value {
                characterBuffer.removeAll()
                result.append("\(number)")
            }
        }
    }
    
    return Int(result) ?? 0
}
