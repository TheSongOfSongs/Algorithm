public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var stack: [(node: TreeNode, depth: Int)] = []
        
        var current = root
        stack.append((current, 1))
        var answer = 1
        
        while !stack.isEmpty {
            
            if let left = current.left {
                current = left
                
                let depth = stack.last!.depth + 1
                stack.append((current, depth))
                answer = max(depth, answer)
            } else {
                while !stack.isEmpty {
                    guard let popElement = stack.popLast() else {
                        break
                    }
                    
                    if let right = popElement.node.right {
                        current = right
                        
                        let depth = popElement.depth + 1
                        stack.append((current, depth))
                        answer = max(depth, answer)
                        break
                    }
                }
            }
        }
        
        return answer
    }
}
