class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits

        guard digits.last! == 9 else {
            let last = digits.removeLast()
            digits.append(Int(last) + 1)
            return digits
        }
                
        for i in stride(from: digits.count-1, through: 0, by: -1) {
            if digits[i] == 9 {
                digits.insert(0, at: i)
                digits.remove(at: i+1)
                
                if i == 0 {
                    digits.insert(1, at: 0)
                }
            } else {
                digits[i] += 1
                break
            }
        }
        
        
        return digits
    }
}
