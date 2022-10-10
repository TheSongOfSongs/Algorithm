    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        var result = 0
        let s = Array(s)
        
        
        var i = 0
        
        while i < s.count {
            if i == s.count - 1 {
                result += dict[s[i]]!
                break
            }
            
            let next = dict[s[i+1]]!
            let current = dict[s[i]]!
            
            if current < next {
                result += (next - current)
                i += 2
            } else {
                result += current
                i += 1
            }
        }
        
        return result
    }
