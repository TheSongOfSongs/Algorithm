class Solution {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        
        return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
    }
}
