class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xor = x ^ y
        var result = 0
        
        while xor != 0 {
            if xor & 1 == 1 {
                result += 1
            }
            
            xor = xor >> 1
        }
        
        return result
    }
}
