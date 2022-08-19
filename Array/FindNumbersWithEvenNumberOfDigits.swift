/// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var ans = 0
        for num in nums where self.isEven(num) {
            ans += 1
        }
        return ans
    }
    
    func isEven(_ i: Int) -> Bool {
        var cp = i
        var ans = 0
        while cp >= 1 {
            ans += 1
            cp /= 10
        }
        return ans % 2 == 0
    }
}
