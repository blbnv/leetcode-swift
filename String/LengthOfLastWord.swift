// https://leetcode.com/problems/length-of-last-word/
// Time O(N)
// Space O(1)

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var current = 0
        var last = 0
        for char in s {
            if char == " " {
                last = current == 0 ? last : current
                current = 0
            } else {
                current += 1
            }
        }
        return current == 0 ? last : current
    }
}
