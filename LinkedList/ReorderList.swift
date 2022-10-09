/// https://leetcode.com/problems/reorder-list

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reorderList(_ head: ListNode?) {
        var mid = self.divideAndModify(head)
        var rev = self.reversed(mid.1)
        
        let h = head
        var p = h
        
        while rev != nil {
            let node = ListNode(rev!.val)
            node.next = p?.next
            p?.next = node
            p = p?.next?.next
            rev = rev?.next
        }
    }
    
    func divideAndModify(_ head: ListNode?) -> (ListNode?, ListNode?) {
        var slow = head
        var fast = head?.next
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        let second = slow?.next
        slow?.next = nil
        return (slow, second)
    }
    
    func reversed(_ head: ListNode?) -> ListNode? {
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
