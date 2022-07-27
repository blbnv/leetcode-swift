/// https://leetcode.com/problems/logger-rate-limiter/
/// Time: O(1)
/// Space: O(N) where N is number of unique log messages


class Logger {

    private var dict: [String: Int]
    
    init() {
        self.dict = [String: Int]()
    }
    
    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        guard let prevTimestamp = self.dict[message] else {
            self.dict[message] = timestamp
            return true
        }
        
        if (timestamp - prevTimestamp) >= 10 {
            self.dict[message] = timestamp
            return true
        }
        
        return false
    }
}

/**
 * Your Logger object will be instantiated and called as such:
 * let obj = Logger()
 * let ret_1: Bool = obj.shouldPrintMessage(timestamp, message)
 */
