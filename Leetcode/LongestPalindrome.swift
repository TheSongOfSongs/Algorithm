class Solution {
    func longestPalindrome(_ s: String) -> Int {
        let arr = Array(s)
        var dict: [Character: Int] = [:]
        var result = 0
        var isAppendedOdd = false
        
        for ch in arr {
            dict[ch] = (dict[ch] ?? 0) + 1
        }
        
        for (_, value) in dict.sorted(by: { $1.value < $0.value }) {
            if value%2 == 0 {
                result += value
            } else {
                if isAppendedOdd {
                    result += value - 1
                } else {
                    result += value
                    isAppendedOdd = true
                }
            }
        }
        
        return result
    }
}
