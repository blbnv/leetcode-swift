/// https://leetcode.com/problems/remove-linked-list-elements/
/// Time: O(n)
/// Space: O(1)

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummy: ListNode? = ListNode(-1, head)
        var p = dummy
        
        while let node = p?.next {
            if node.val == val {
                p?.next = p?.next?.next
            } else {
                p = p?.next
            }
        }
        
        return dummy?.next
    }
}
