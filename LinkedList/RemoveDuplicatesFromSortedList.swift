/// https://leetcode.com/problems/remove-duplicates-from-sorted-list/
/// Time: O(N)
/// Space: O(1)

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode(-1, head)
        var p0 = dummy
        var p1 = dummy?.next
        
        while let l = p1, let r = p1?.next {
            if l.val == r.val {
                p0?.next = p0?.next?.next
                p1 = p0?.next
            } else {
                p0 = p1
                p1 = p1?.next
            }
        }
        
        return dummy?.next
    }
}
