/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n
        
        while true {
            if left + 1 >= right {
                return right
            }
            
            let middle = (left + right)/2
            
            if isBadVersion(middle) {
                right = middle
            } else {
                left = middle
            }
        }
    }
}
