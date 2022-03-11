import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    var result: [Int64] = []
    
    for num in numbers {
        // 1. 10진수 -> 2진수로 변경
        var binary = Array("0" + String(num, radix: 2))
        
        // 2. 가장 뒤에 있는 0 -> 1로 변경
        let lastZeroIndex = binary.lastIndex(of: "0")!
        binary[lastZeroIndex] = "1"
        
        let range = binary.index(after: lastZeroIndex)..<binary.endIndex
        for index in range {
            if binary[index] == "1" {
                binary[index] = "0"
                break
            }
        }

        // 3. 10진수를 2진수로 변경
        result.append(Int64(String(binary), radix: 2)!)
    }
    
    return result
}

