class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        if n == 1 { return true }
        
        var n = n
        
        while n%3 == 0 {
            n /= 3
            
            if n == 1 {
                return true
            }
        }
        
        return n == 1
    }
}
