/// https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
/// Time: O(1)
/// Space: O(1)

class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var n = 0
        if low % 2 == 1 || high % 2 == 1 { n += 1 }
        n += (high-low) / 2
        return n
    }
}
