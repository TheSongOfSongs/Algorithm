class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else {
            return []
        }
        
        var result: [String] = []
        
        var start = nums.first!
        
        for i in 1..<nums.count {
            if nums[i-1] + 1 != nums[i] {
                result.append(range(start: start, end: nums[i-1]))
                start = nums[i]
            }
        }
        
        result.append(range(start: start, end: nums.last!))
        
        return result
    }
    
    func range(start: Int, end: Int) -> String {
        if start == end {
            return "\(start)"
        } else {
            return "\(start)->\(end)"
        }
    }
}
