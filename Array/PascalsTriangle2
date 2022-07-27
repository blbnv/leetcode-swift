/// https://leetcode.com/problems/pascals-triangle-ii/
/// Time: TBD
/// Sum: TBD

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var triangle = [[Int]]()
        for i in 1...rowIndex+1 {
            var sub = [Int]()
            for j in 0..<i {
                if j == 0 || j == i-1 { 
                    sub.append(1)
                } else {
                    let prev = triangle[i-2]
                    let el = prev[j] + prev[j-1]
                    sub.append(el)
                }
            }
            triangle.append(sub)
        }
        return triangle[rowIndex]
    }
}
