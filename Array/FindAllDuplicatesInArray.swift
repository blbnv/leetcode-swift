/// https://leetcode.com/problems/find-all-duplicates-in-an-array/
/// Time: O(N)
/// Space: O(1)

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var copy = nums
        var ans = [Int]()
        for i in 0..<nums.count {
            let el = abs(copy[i])
            if copy[el-1] < 0 {
                ans.append(el)
            } else {
                copy[el-1] *= -1
            }
        }
        return ans
    }
}
