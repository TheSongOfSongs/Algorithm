class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let pattern = Array(pattern)
        let s = s.split(separator: " ")
        var dict: [Character: String] = [:]
        
        guard pattern.count == s.count else {
            return false
        }
        
        for (index, ch) in pattern.enumerated() {
            if let word = dict[ch] {
                if word != s[index] {
                    return false
                }
                
                continue
            }
            
            if dict.first(where: { $0.value == s[index] }) != nil {
                return false
            }
            
            dict[ch] = String(s[index])
        }
        
        return true
    }
}

