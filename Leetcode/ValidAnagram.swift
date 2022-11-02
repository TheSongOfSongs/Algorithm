class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var sDict: [Character: Int] = [:]
        var tDict: [Character: Int] = [:]
        
        let s = Array(s)
        let t = Array(t)
        
        for i in 0..<s.count {
            sDict[s[i]] = (sDict[s[i]] ?? 0) + 1
            tDict[t[i]] = (tDict[t[i]] ?? 0) + 1
        }
        
        for (key, value) in sDict {
            if tDict[key] != value {
                return false
            }
        }
        
        return true
    }
}

