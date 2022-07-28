/// https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
/// Time: O(N)
/// Space: O(N)

/// It's very similar to the https://leetcode.com/problems/maximum-size-subarray-sum-equals-k/
/// 1. Get the sum of all elements
/// 2. Find a sum of subarray we need to find = SumOfAllElements - x
/// 3. Try to find this subarray if it exists.
/// 4. In the beginning, if needed element equals to zero, we need to stop,
/// check is the sum of all elements equals to array count, if yes - it's the answer, if no = -1.
///
/// P.S. Solution to the mentioned task - https://github.com/blbnv/leetcode-swift/commit/5695cf9e2e32df77c4953d39552ed65919cfdf9f

class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        let all = nums.reduce(0, +)
        let needed = all - x
        /// In this case don't need to proceed since all the elements in array are strongly positive.
        /// If the sum is equal to x, it means the count of collection is the only solution.
        guard needed != 0 else { return all == x ? nums.count : -1 }
      
        var maxi = 0
        var dict = [Int:Int]()
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
            
            if sum == needed {
                maxi = i + 1
            }
            
            if let index = dict[sum-needed] {
                maxi = max(maxi, i - index)
            }
            
            if dict[sum] == nil {
                dict[sum] = i
            }
        }
        
        return maxi == 0 ? -1 : nums.count - maxi
    }
}
