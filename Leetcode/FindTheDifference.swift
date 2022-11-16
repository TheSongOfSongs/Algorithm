class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let s = Array(s)
        let t = Array(t)
        
        var dictS: [Character: Int] = [:]
        var dictT: [Character: Int] = [:]
        
        for i in 0..<s.count {
            dictS[s[i]] = (dictS[s[i]] ?? 0) + 1
            dictT[t[i]] = (dictT[t[i]] ?? 0) + 1
        }
        
        dictT[t.last!] = (dictT[t.last!] ?? 0) + 1
        
        for (key, value) in dictT {
            if value != dictS[key] {
                return key
            }
        }
        
        return " "
    }
}
