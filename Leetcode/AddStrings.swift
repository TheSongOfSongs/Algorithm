class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let n1 = Array(String(num1.reversed())).map({ String($0) })
        let n2 = Array(String(num2.reversed())).map({ String($0) })
        
        var result = ""
        var ten = 0
        var index = 0
        
        let maxCount = max(n1.count, n2.count)
        while index < maxCount {
            var temp = ten == 0 ? 0 : 1
            ten = 0
            
            if index < n1.count {
                temp += Int(n1[index])!
            }
            
            if index < n2.count {
                temp += Int(n2[index])!
            }
            
            if temp >= 10 {
                ten = 1
                temp -= 10
            }
            
            index += 1
            result += String(temp)
        }
        
        if ten == 1 {
            result += "1"
        }
        
        return String(result.reversed())
    }
}
