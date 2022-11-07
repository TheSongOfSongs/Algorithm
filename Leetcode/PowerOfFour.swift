class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        if n == 1 { return true }
        
        var n = n
        
        while n%4 == 0 {
            n /= 4
            
            if n == 1 {
                return true
            }
        }
        
        return false
    }
}
