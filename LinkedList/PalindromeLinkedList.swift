/// https://leetcode.com/problems/palindrome-linked-list/submissions/
/// Time: O(N)
/// Space: O(1)

/// 1. Find second half of the LL - Slow/Fast pointers.
/// 2. Reverse it in-place.
/// 3. Compare first and second parts.
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var half = self.secondHalf(head)
        var reversed = self.reversed(half)
        return self.isPal(head, reversed)
    }
    
    func isPal(_ p0: ListNode?, _ p1: ListNode?) -> Bool {
        var h1 = p1
        var h2 = p0
        
        while h1 != nil {
            if h1?.val != h2?.val { return false }
            h1 = h1?.next
            h2 = h2?.next
        }
        
        return true
    }
    
    func reversed(_ head: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode(-1)
        var pointer = head
        
        while pointer != nil {
            let saved = dummy?.next
            dummy?.next = .init(pointer!.val)
            dummy?.next?.next = saved
            pointer = pointer?.next
        }
        
        return dummy?.next
    }
    
    func secondHalf(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }
}
