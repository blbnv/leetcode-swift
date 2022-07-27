/// https://leetcode.com/problems/two-sum/
/// Time: O(N)
/// Space: O(N)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        for (i,num) in nums.enumerated() {
            let need = target - num
            if let index = dict[need] {
                return [index, i]
            } else {
                dict[num] = i
            }
        }
        fatalError()
    }
}
