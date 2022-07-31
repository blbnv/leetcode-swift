/// https://leetcode.com/problems/remove-nth-node-from-end-of-list
/// Time: O(N)
/// Space: O(1)

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var length = 0
        var p = head
        while p != nil { length += 1; p = p?.next }
        
        var dummy: ListNode? = ListNode(-1, head)
        p = dummy
        
        for i in 0..<length-n {
            p = p?.next
        }
        
        p?.next = p?.next?.next
        
        return dummy?.next
    }
}
