import Foundation

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard ransomNote.count <= magazine.count else { return false }
        
        let ransomNote = Array(ransomNote.sorted())
        let magazine = Array(magazine.sorted())
        
        var i = 0
        
        for ch in ransomNote {
            
            while true {
                if i >= magazine.count {
                    return false
                }
                
                let magazineCh = magazine[i]
                if ch < magazineCh {
                    return false
                }
                
                i += 1
                
                if ch == magazineCh {
                    break
                }
            }
        }
        
        return true
    }
}
