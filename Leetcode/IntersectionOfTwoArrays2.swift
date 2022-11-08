class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1 = nums1
        var nums2 = nums2
        var result: [Int] = []
        
        if nums1.count > nums2.count {
            swap(&nums1, &nums2)
        }
        
        var index = 0
        while index < nums1.count {
            if let nums2Index = nums2.firstIndex(of: nums1[index]) {
                result.append(nums1[index])
                nums1.remove(at: index)
                nums2.remove(at: nums2Index)
            } else {
                index += 1
            }
        }
        
        return result
    }
}
