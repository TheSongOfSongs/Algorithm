class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else {
            return false
        }
        
        var queue : [(TreeNode, Int)] = [(root, root.val)]
        
        while !queue.isEmpty {
            let nodeInfo = queue.removeFirst()
            let node = nodeInfo.0
            let sum = nodeInfo.1
            
            if node.left == nil,
               node.right == nil,
               targetSum == sum {
                return true
            }
            
            let newSum = sum + node.val
            
            if node.left == nil,
               let right = node.right {
                queue.append((right, sum + right.val))
            } else if let left = node.left,
                      node.right == nil {
                queue.append((left, sum + left.val))
            } else if let left = node.left,
                      let right = node.right {
                queue.append((left, sum + left.val))
                queue.append((right, sum + right.val))
            }
        }
        
        return false
    }
}
