extension ListNode {
    func nextForRemovedDuplicates() -> ListNode? {
        var current = self
        var next = current.next
        
        while true {
            if next != nil,
               current.val == next!.val {
                current = next!
                next = current.next
            } else {
                break
            }
        }
        
        return next
    }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        
        while true {
            guard current?.next != nil else {
                break
            }
            
            current?.next = current?.nextForRemovedDuplicates()
            current = current?.next
        }
        
        return head
    }
}

