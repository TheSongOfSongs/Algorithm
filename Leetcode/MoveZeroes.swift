class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        var zeroCount = 0
        while index < nums.count {
            if nums[index] == 0 {
                nums.remove(at: index)
                zeroCount += 1
            } else {
                index += 1
            }
        }
        
        nums.append(contentsOf: Array(repeating: 0, count: zeroCount))
    }
}
