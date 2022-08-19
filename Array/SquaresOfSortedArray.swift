/// https://leetcode.com/problems/squares-of-a-sorted-array/

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var l = 0
        var r = nums.count - 1
        var ans = [Int]()
        while l <= r {
            if abs(nums[l]) > abs(nums[r]) {
                let num = nums[l] * nums[l]
                ans.insert(num, at: 0)
                l += 1
            } else {
                let num = nums[r] * nums[r]
                ans.insert(num, at: 0)
                r -= 1
            }
        }
        return ans
    }
}
