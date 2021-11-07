import Foundation

func solution(_ p:String) -> String {
    // 1. 입력이 빈 문자열인 경우, 빈 문자열을 반환합니다.
    guard !p.isEmpty else { return p }
    
    // 2. 문자열 w를 두 "균형잡힌 괄호 문자열" u, v로 분리합니다. 단, u는 "균형잡힌 괄호 문자열"로 더 이상 분리할 수 없어야 하며, v는 빈 문자열이 될 수 있습니다.
    let separated = separatedStrings(w: p)
    let u = separated.0
    let v = separated.1
    
    var result = ""
    
    // 3. 문자열 u가 "올바른 괄호 문자열" 이라면 문자열 v에 대해 1단계부터 다시 수행합니다.
    if isCorrect(w: u) {
        print("[1]")
        return u + solution(v)
    } else {
        // 4. 문자열 u가 "올바른 괄호 문자열"이 아니라면 아래 과정을 수행합니다.
        result = "("
        result += solution(v)
        result += ")"
        result += reorderU(u: u)
    }
    
    return result
}

func isCorrect(w: String) -> Bool {
    let arr = Array(w)
    var index = 0
    
    for ch in arr {
        if index < 0 {
            return false
        }
        
        if ch == "(" {
            index += 1
        } else {
            index -= 1
        }
    }
    
    return index == 0
}

func isBalanced(str: String) -> Bool {
    let leftCount = str.filter({ $0 == "(" }).count
    let rightCount = str.filter({ $0 == ")" }).count
    return leftCount == rightCount
}

func separatedStrings(w: String) -> (String, String) {
    if w.count < 2 {
        return (w, "")
    }
    
    for i in 1..<w.count {
        let u = String(w[w.startIndex...w.index(w.startIndex, offsetBy: i)])
        let v = String(w[w.index(w.startIndex, offsetBy: i+1)..<w.endIndex])
        
        if isBalanced(str: u),
           isBalanced(str: v) {
            return (u, v)
        }
    }
    
    return ("", "")
}

func reorderU(u: String) -> String {
    var u = Array(u)
    u.removeFirst()
    u.removeLast()
    
    for (i, ch) in u.enumerated() {
        if ch == "(" {
            u[i] = ")"
        } else {
            u[i] = "("
        }
    }
    
    return String(u)
}

