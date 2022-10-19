class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = 0
        var nums2 = nums2
        
        if nums1.count > m {
            nums1.removeSubrange(m..<nums1.count)
        }
        
        if nums1.isEmpty {
            nums1 = nums2
            return
        }
        
        while !nums2.isEmpty {
            let num2 = nums2.first!
            
            if nums1[index1] >= num2 {
                nums1.insert(num2, at: index1)
                nums2.removeFirst()
            } else if index1 + 1 < nums1.count {
                index1 += 1
            } else {
                nums1.append(num2)
                nums2.removeFirst()
            }
        }
    }
}
