/// https://leetcode.com/problems/missing-number/ 
/// Time: O(N)
/// Space: O(1)

/// Use Gauss formula = n * n(+1) / 2
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var actual = nums.reduce(0,+)
        var needed = nums.count * (nums.count + 1) / 2
        return needed - actual
    }
}
