/// https://leetcode.com/problems/search-in-rotated-sorted-array/
/// Time: O(n * log(n)) = O(N)
/// Space: O(1)

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var k = 0
        let count = nums.count
        
        /// 1. Find a rotation number k
        for i in 0..<count-1 {
            let left = nums[i]
            let right = nums[i+1]
            if left > right { k = i+1; break }
        }

        /// 2. Binary search with shifting mid index to k.
        var l = 0
        var r = count - 1

        while l <= r {
            let mid = l + (r-l)/2
            let midShift = (mid+k) % count
            if nums[midShift] == target {
                return midShift
            } else if nums[midShift] > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }

        return -1
    }
}
