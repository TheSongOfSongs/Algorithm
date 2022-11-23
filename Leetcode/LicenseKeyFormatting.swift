class Solution {
    func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
        var result = ""
        
        let arr = s.filter({ $0 != "-" }).reversed()
        
        guard arr.count > 0 else { return "" }
        
        var temp = ""
        
        for ch in arr {
            temp = "\(ch)\(temp)"
            
            if temp.count == k {
                result = "\(temp)-\(result)"
                temp = ""
            }
        }
        
        if !temp.isEmpty {
            result = "\(temp)-\(result)"
        }
        
        result.removeLast()
        
        return result.uppercased()
    }
}
