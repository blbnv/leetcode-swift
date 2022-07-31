/// https://leetcode.com/problems/search-insert-position/
/// Time: O(log(n))
/// Space: O(1)

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        
        while l<=r {
            let mid = l + (r-l)/2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        
        return l
    }
}
