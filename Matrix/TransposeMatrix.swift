/// https://leetcode.com/problems/transpose-matrix/
/// Time: O(n*m) where n and m are number of rows and columns
/// Space: O(1)

class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var m = matrix.count
        var n = matrix[0].count
        var res: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count:m), count: n)
        for i in 0..<res.count {
            for j in 0..<res[0].count {
                res[i][j] = matrix[j][i]
            }
        }
        return res
    }
}
