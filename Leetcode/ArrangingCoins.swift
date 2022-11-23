class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var temp = n
        
        for i in 1...n {
            if temp >= i {
                temp -= i
            } else {
                return i-1
            }
        }
        
        return n
    }
}

