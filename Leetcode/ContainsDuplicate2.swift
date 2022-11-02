class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict: [Int: Int] = [:]
        
        for (i, num) in nums.enumerated() {
            if let index = dict[num],
            i - index <= k {
                return true
            } else {
                dict[num] = i
            }
        }
        
        return false
    }
}
