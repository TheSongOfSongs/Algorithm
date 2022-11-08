class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num == 1 {
            return true
        }
        
        for i in 1...num/2 where i*i == num {
            return true
        }
        
        return false
    }
}
