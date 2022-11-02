class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        for (i, num) in nums.enumerated() {
            if i != num {
                return i
            }
        }
        
        return nums.count
    }
}

