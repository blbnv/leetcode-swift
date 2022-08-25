/// https://leetcode.com/problems/fruit-into-baskets/
/// Time O(N)
/// Space O(1)

class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var left = 0
        var result = 0
        var positions = [Int: Int]()
        
        for (i, num) in fruits.enumerated() {
            if positions.count == 2 {
                if positions[num] != nil {
                    positions[num] = i
                } else {
                    let keys = Array(positions.keys)
                    let vals = Array(positions.values)
                    if vals[0] < vals[1] {
                        positions[keys[0]] = nil
                    } else {
                        positions[keys[1]] = nil
                    }
                    left = min(vals[0], vals[1]) + 1
                    positions[num] = i
                }
            } else {
                positions[num] = i
            }
            
            result = max(result, i-left+1)
        }
        
        return result
    }
}
