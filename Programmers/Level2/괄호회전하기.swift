import Foundation

let braces: [Character: Character] = ["[":"]", "(":")", "{":"}"]

func solution(_ s:String) -> Int {
    var result = 0
    var s = s
    
    // 왼쪽으로 한 칸씩 당기기
    for _ in 0..<s.count {
        let last = s.removeFirst()
        s = s + String(last)
        
        // 올바른 문자열인지 확인하기
        result += checkIsRight(s) ? 1 : 0
    }
    
    return result
}

func checkIsRight(_ s: String) -> Bool {
    var stack: [Character] = []
    let openbraces = braces.keys
    
    for ch in Array(s) {
        if stack.isEmpty {
            if openbraces.contains(ch) {
                stack.append(ch)
            } else {
                return false
            }
        } else {
            if openbraces.contains(ch) {
                stack.append(ch)
                continue
            } else {
                let last = stack.last!
                
                if braces[last] == ch {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
    }
    
    return stack.isEmpty
}

