func isPalindrome(_ x: Int) -> Bool {
        let str = Array(String(x))
        for i in 0..<str.count/2 {
            if str[i] != str[str.count-1-i] {
                return false
            }
        }
        
        return true
    }
