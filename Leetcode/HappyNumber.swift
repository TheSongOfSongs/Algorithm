class Solution {
    func isHappy(_ n: Int) -> Bool {
        var n = n
        var seen: Set<Int> = []
        
        while n != 1,
              !seen.contains(n) {
            
            seen.insert(n)
            
            let arr = Array(String(n)).map({ Int(String($0))! })
            n = arr.reduce(0, { result, num in
                return result + num * num
            })
        }
        
        return n == 1
    }
}
