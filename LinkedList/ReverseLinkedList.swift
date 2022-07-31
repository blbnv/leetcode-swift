/// https://leetcode.com/problems/reverse-linked-list/
/// Time: O(N)
/// Space: O(1)

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode(-1)
        var pointer = head
        
        while pointer != nil {
            let node = ListNode(pointer!.val)
            node.next = dummy?.next
            dummy?.next = node
            pointer = pointer?.next
        }
        
        
        return dummy?.next
    }
}
