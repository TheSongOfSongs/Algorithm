class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0
        var right = nums.count-1
        
        while true {
            let middle = (left + right)/2
            let middleN = nums[middle]
            
            if middleN < target {
                left = middle
                
            } else if middleN > target {
                right = middle
                
            } else { // 숫자 발견
                return middle
            }
            
            if right - left <= 1 {
                if nums[left] >= target {
                    return left
                } else if nums[right] < target {
                    return right+1
                } else {
                    return right
                }
            }
        }
    }
}
