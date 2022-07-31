/// https://leetcode.com/problems/permutations/
/// Time: ?
/// Space: O(N!)

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count == 1 {
            return [nums]
        }
        var result = [[Int]]()
        var numz = nums
        
        for _ in 0..<numz.count {
            var modified = numz.removeFirst()
            var perm = self.permute(numz)
            perm = perm.map { $0 + [modified] }
            result = result + perm
            numz.append(modified)
        }
        
        return result
    }
}
