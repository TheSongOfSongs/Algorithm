class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var answer = ""
        
        let minCount = strs.map({ $0.count }).min()!
        let strsCount = strs.count
        let strs = strs.map({ Array($0) })
        
        for i in 0..<minCount {
            
            let standard = strs[0][i]
            var isSame = true
            
            for j in 1..<strsCount {
                if standard != strs[j][i] {
                    isSame = false
                    break
                }
            }
            
            if isSame {
                answer += String(standard)
            } else {
                return answer
            }
        }
        
        return answer
    }
}
