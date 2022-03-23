import Foundation

func solution(_ expression:String) -> Int64 {
    // 1. 연산자, 피연산자 쪼개기
    let operators = Set(expression.filter { $0 == "+" || $0 == "-" || $0 == "*" }).map { String($0) }
    let arr = separated(expression, separators: operators)
    
    // 2. 연산자 permutation 만들기
    var permutation: [[String]] = []
    getPermutation(arr: operators, result: &permutation)
    
    // 3. 연산자 permutation 따라서 계산하고 값 저장하기
    var results: [Int64] = []
    for priority in permutation {
        var arr = arr

        for op in priority {
            var replacingStr = ""
            while arr.contains(op) {
                let index = arr.firstIndex(of: op)!
                let n1 = Int(arr[index-1])!
                let n2 = Int(arr[index+1])!
                if op == "+" {
                    replacingStr = "\(n1 + n2)"
                } else if op == "-" {
                    replacingStr = "\(n1 - n2)"
                } else if op == "*" {
                    replacingStr = "\(n1 * n2)"
                }
                arr.replaceSubrange(index-1...index+1, with: [replacingStr])
            }
        }
        
        results.append(abs(Int64(arr.first!)!))
    }
    
    return results.max()!
}

func getPermutation<T>(arr: [T], result: inout [[T]], startIndex: Int = 0) {
    guard startIndex < arr.count else {
        result.append(arr)
        return
    }
    
    var arr = arr
    for i in startIndex..<arr.count {
        arr.swapAt(i, startIndex)
        getPermutation(arr: arr, result: &result, startIndex: startIndex + 1)
        arr.swapAt(i, startIndex)
    }
}

func separated(_ expression: String, separators: [String]) -> [String] {
    var arr: [String] = []
    var temp: String = ""
    
    for ch in expression {
        let ch = String(ch)
        if separators.contains(ch) {
            arr.append(contentsOf: [temp, ch])
            temp = ""
        } else {
            temp.append(ch)
        }
    }
    
    arr.append(temp)
    return arr
}
