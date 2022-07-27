/// https://leetcode.com/problems/rotate-array/
/// Time: O(N)
/// Space: O(N)

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let count = nums.count
        var array = [Int](repeating: 0, count: nums.count)
        
        for (i, num) in nums.enumerated() {
            let newIndex = (i+k) % count
            array[newIndex] = num
        }
        
        nums = array
    }
}
