/// https://leetcode.com/problems/max-consecutive-ones/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var ans = 0
        var current = 0
        for num in nums {
            if num == 1 {
                current += 1
            } else {
                ans = max(ans, current)
                current = 0
            }
        }
        ans = max(ans, current)
        return ans
    }
}
