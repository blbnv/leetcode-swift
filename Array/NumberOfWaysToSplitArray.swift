/// https://leetcode.com/problems/number-of-ways-to-split-array/
/// Time O(N)
/// Space O(N)

class Solution {
    func waysToSplitArray(_ nums: [Int]) -> Int {
        var lPref = self.leftPrefixSum(nums)
        var rPref = self.rightPrefixSum(nums)
        var size = nums.count
        var result = 0
        
        for i in 0..<size-1 {
            if lPref[i] >= rPref[i+1] {
                result += 1
            }
        }
        
        return result
    }
    
    func leftPrefixSum(_ nums: [Int]) -> [Int] {
        var p = 0
        var ans = [Int](repeating: 0, count: nums.count)
        
        for (i, val) in nums.enumerated() {
           ans[i] = p + nums[i]
           p = ans[i] 
        }
        
        return ans
    }
    
    func rightPrefixSum(_ nums: [Int]) -> [Int] {
        var sum = 0
        var ans = [Int](repeating: 0, count: nums.count)
        
        for (i, val) in nums.reversed().enumerated() {
            let index = nums.count - i - 1
            ans[index] = sum + nums[index]
            sum = ans[index]
        }
        
        return ans
    }
}
