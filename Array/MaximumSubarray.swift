/// https://leetcode.com/problems/maximum-subarray/submissions/
/// Time: O(N)
/// Space: O(1)

/// It's very similar to greedy. 
/// Main idea is to iteractively find the start of good array.
/// We always compare currentSum with the next element, because if it's bigger, we can replace it without complains.
/// Maximum value should be calculated every iteration.
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSubArray = nums[0]
        var currentSubArray = nums[0]
        for i in 1..<nums.count {
            let element = nums[i]
            currentSubArray = max(element, currentSubArray+element)
            maxSubArray = max(maxSubArray, currentSubArray)
        }
        
        return maxSubArray
    }
}
