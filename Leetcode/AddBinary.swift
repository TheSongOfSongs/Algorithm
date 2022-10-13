class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let aReversed = Array(a).reversed()
        let bReversed = Array(b).reversed()
        
        let aCount = a.count
        let bCount = b.count
        let maxCount = max(aCount, bCount)
        var answer = ""
        var extraTen = 0
        
        let aReversedStartIndex = aReversed.startIndex
        let bReversedStartIndex = bReversed.startIndex
        
        for i in 0..<maxCount {
            var sum = extraTen
            
            if i < aCount {
                sum += Int(String(aReversed[aReversed.index(aReversedStartIndex, offsetBy: i)]))!
            }
            
            if i < bCount {
                sum += Int(String(bReversed[bReversed.index(bReversedStartIndex, offsetBy: i)]))!
            }
            
            if sum <= 1 {
                answer = "\(sum)\(answer)"
                extraTen = 0
            } else {
                answer = "\(sum - 2)\(answer)"
                extraTen = 1
            }
        }
        
        if extraTen == 1 {
            answer = "1" + answer
        }
        
        return answer
    }
}
