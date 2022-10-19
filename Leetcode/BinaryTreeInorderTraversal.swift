/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var stack: [TreeNode] = []
        var answer: [Int] = []
        
        guard let root = root else {
            return []
        }
        
        var current = root
        stack.append(current)
        
        while !stack.isEmpty {
            if let left = current.left {
                current = left
                stack.append(current)
                continue
            }
            
           while !stack.isEmpty {
                if let popElement = stack.popLast() {
                    answer.append(popElement.val)
                    
                    if let right = popElement.right {
                        current = right
                        stack.append(current)
                        break
                    }
                } else {
                    break
                }
           }
        }
        
        return answer
    }
}

