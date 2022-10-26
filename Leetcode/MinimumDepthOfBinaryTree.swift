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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var stack: [(TreeNode, Int)] = []
        
        var current = root
        var answer: Int?
        stack.append((current, 1))
        
        while !stack.isEmpty {
            if let left = current.left {
                current = left
                
                let currentLength = stack.last!.1 + 1
                stack.append((current, currentLength))
                continue
            }
            
            while !stack.isEmpty {
                guard let popElement = stack.popLast() else {
                    break
                }
                
                let leaf = popElement.0
                let depth = popElement.1
                
                // 오른쪽 leaf가 있을 때
                if let right = leaf.right {
                    current = right
                    stack.append((current, depth + 1))
                    break
                }
                
                // 왼쪽, 오른쪽 모두 leaf가 없을 때
                if leaf.left == nil {
                    if answer == nil {
                        answer = depth
                    } else {
                        answer = min(answer!, depth)
                    }
                }
            }
        }
        
        return answer ?? 1
    }

    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var queue : [(TreeNode, Int)] = [(root,1)]
        
        while !queue.isEmpty {
            let nodeInfo = queue.removeFirst()
            let node = nodeInfo.0
            let depth = nodeInfo.1
            let newDepth = depth + 1
            
            if node.left == nil,
               node.right == nil {
                return depth
            }
            
            if node.left == nil,
               let right = node.right {
                queue.append((right, newDepth))
            } else if let left = node.left,
                      node.right == nil {
                queue.append((left, newDepth))
            } else {
                queue.append((node.right!, newDepth))
                queue.append((node.left!, newDepth))
            }
        }
        
        return 0
    }
}
