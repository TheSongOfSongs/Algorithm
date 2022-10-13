class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        
        var memo: [Int] = Array(repeating: 0, count: 46)
        memo[1] = 1
        memo[2] = 2
        
        for i in 3...n {
            memo[i] = memo[i-1] + memo[i-2]
        }
        
        return memo[n]
    }
}

