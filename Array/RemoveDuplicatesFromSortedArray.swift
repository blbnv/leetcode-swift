/// https://leetcode.com/problems/remove-duplicates-from-sorted-array/
/// Time: O(N)
/// Space: O(1)

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        while i < nums.count-1 {
            if nums[i] == nums[i+1] {
                nums.remove(at: i+1)
            } else {
                i += 1
            }
        }
        return nums.count
    }
}
