class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict: [Character: Int] = [:]
        var s = Array(s)
        
        for ch in s {
            dict[ch] = (dict[ch] ?? 0) + 1
        }
        
        if let index = s.firstIndex(where: { dict[$0] == 1 }) {
            return index
        }
        
        return -1
    }
}
