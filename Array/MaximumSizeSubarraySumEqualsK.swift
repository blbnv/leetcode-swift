/// 
/// Time: O(N)
/// Space: O(N)

/// Calculate prefix sum for every element:
/// If it's equal to `k` - it's the longest subarray since we tracking from the beginning.
/// If not, but we have needed prefix sum in the map - let's use max to identify
/// If there is no prefix sum in dict - let's add its index. We don't need to rewrite
/// because we are looking for the longest array.
class Solution {
    func maxSubArrayLen(_ nums: [Int], _ k: Int) -> Int {
        var prefixSum = 0
        var maximum = 0
        var dict = [Int:Int]()
        
        for i in 0..<nums.count {
            prefixSum += nums[i]
            /// The best case - subarray starts from the beginning
            if prefixSum == k {
                maximum = i + 1
            }
            /// Diff in target and prefix sum is the new prefix sum we're looking for
            let needed = prefixSum - k
            /// If it exists - let's use max to find the length
            if let index = dict[prefixSum - k] {
                maximum = max(maximum, i - index)
            }
            /// Don't rewrite indexes. We need to keep closer to the left side of array
            /// To get longer potential subarray.
            if dict[prefixSum] == nil {
                dict[prefixSum] = i
            }
        }
        
        return maximum
    }
}
