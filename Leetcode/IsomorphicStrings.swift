class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        var dict: [Character: Character] = [:]
        var set: Set<Character> = []
        
        for i in 0..<s.count {
            let sCh = s[i]
            let tCh = t[i]
            
            if let ch = dict[tCh] {
                if ch != sCh {
                    return false
                }
            } else {
                if set.contains(sCh) {
                    return false
                }
                
                dict[tCh] = sCh
                set.insert(sCh)
            }
        }
        
        return true
    }
}
