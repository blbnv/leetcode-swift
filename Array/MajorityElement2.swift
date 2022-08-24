/// https://leetcode.com/problems/majority-element-ii/
/// Time O(N)
/// Space O(N)

class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for num in nums { dict[num, default: 0] += 1 }
        
        let target = nums.count / 3
        var result = [Int]()
        
        for (key, value) in dict {
            if value > target {
                result.append(key)
            }
        }
        
        return result
    }
}
