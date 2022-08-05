/// https://leetcode.com/problems/find-the-duplicate-number/
/// Time: O(N)
/// Space: O(1)

/// Let's mark the element at index abs(nums[i]) with negative sign
/// Once we'll meet the same element for the second time - we'll see it's negative  
class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var copy = nums
        for i in 0..<copy.count {
            let el = abs(copy[i])
            if copy[el] < 0 {
                return el
            } else {
                copy[el] *= -1
            }
        }
        return -1
    }
}
