class Solution {
    func addDigits(_ num: Int) -> Int {
        var result = num
        
        while result >= 10 {
            result = result/10 + result%10
        }
        
        return result
    }
}

