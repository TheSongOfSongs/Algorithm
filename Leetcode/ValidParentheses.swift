class Solution {
    func isValid(_ s: String) -> Bool {
        let s = Array(s)
        var stack: [Character] = []
        let pairs: [Character: Character] = ["(": ")", "[": "]", "{": "}"]
        
        for ch in s {
            if ch == "(" || ch == "[" || ch == "{" {
                stack.append(ch)
            } else if let top = stack.last {
                if ch == pairs[top] {
                    stack.removeLast()
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        
        return stack.isEmpty
    }
}

