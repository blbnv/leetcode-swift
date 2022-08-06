/// https://leetcode.com/problems/search-a-2d-matrix/
/// Time: O(log(N))
/// Space: O(N)

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let count = matrix.count * matrix[0].count
        let row = matrix[0].count
        var l = 0
        var r = count - 1
        
        while l <= r {
            let mid = l + (r-l) / 2
            let coords = self.toCoordinates(mid, row)
            let element = matrix[coords[0]][coords[1]]
            
            if element == target {
                return true
            } else if element > target {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        
        return false
    }
    
    func toCoordinates(_ number: Int, _ rowCount: Int) -> [Int] {
        let row = number / rowCount
        let col = number % rowCount
        return [row, col]
    }
}
