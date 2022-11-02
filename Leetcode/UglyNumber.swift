class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        
        var isUgly = false
        var n = n
        
        while n > 1 {
            isUgly = false
            
            let two = checkDivide(num: n, divisor: 2)
            let five = checkDivide(num: two.n, divisor: 5)
            let three = checkDivide(num: five.n, divisor: 3)
            
            isUgly = two.isUgly || five.isUgly || three.isUgly
            n = three.n
            
            if !isUgly {
                return false
            }
        }
        
        return isUgly
    }
    
    func checkDivide(num: Int, divisor: Int) -> (isUgly: Bool, n: Int) {
        if num%divisor == 0 {
            return (true, num/divisor)
        }
        
        return (false, num)
    }
}
