class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.filter({ $0.isLetter || $0.isNumber }).lowercased()
        let reversed = String(s.reversed())
        return s == reversed
    }
}
