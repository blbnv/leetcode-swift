/// https://leetcode.com/problems/maximum-product-subarray/
/// Time: O(N)
/// Space: O(1)

/// The task is the same as Max Subarray, but there is a tricky moment with the product of negative nums.
/// 1. Find a temporary max val by trying use maxMin * el and maxMax * el
/// 2. Find a min val
/// 3. Apply temp max to the max
/// 4. Find max value from current max and result.
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var currentMin = nums[0]
        var currentMax = nums[0]
        var maxProd = nums[0]

        for i in 1..<nums.count {
            let num = nums[i]
            let tempMax = max(num, max(currentMax * num, currentMin * num))
            currentMin = min(num, min(currentMax * num, currentMin * num))
            currentMax = tempMax
            maxProd = max(maxProd, currentMax)
        }

        return maxProd
    }
}
