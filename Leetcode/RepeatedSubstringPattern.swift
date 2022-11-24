class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let s = Array(s)
        let length = s.count
        var result = false
        
        for i in stride(from: length/2, through: 1, by: -1) where length % i == 0 {
            result = true
            
            var j = 0
            while j + i < length {
                if s[j..<j+i] != s[j+i..<j+2*i] {
                    result = false
                    break
                }
                j += i
            }
            
            if result == true {
                return true
            }
        }
        
        return result
    }
}
