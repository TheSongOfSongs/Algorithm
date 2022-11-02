class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var n = n
        
        if n == 1 {
            return true
        }
        
        while n > 1,
              n%2 == 0 {
            n /= 2
        }
        
        return n == 1
    }
}
