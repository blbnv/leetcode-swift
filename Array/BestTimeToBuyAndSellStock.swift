/// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
/// Time: O(N)
/// Space: O(1)

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0]
        var profit = 0
        
        for i in 1..<prices.count {
            let sell = prices[i]
            profit = max(profit, sell-buy)
            buy = min(buy, sell)
        }
        
        return profit
    }
}
