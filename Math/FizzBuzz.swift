/// https://leetcode.com/problems/fizz-buzz/submissions/
/// Time: O(N)
/// Space: O(N)

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
        for i in 1...n {
            var word = ""
            if i % 3 == 0 {
                word += "Fizz"
            }
            if i % 5 == 0 {
                word += "Buzz"
            }
            if word.count == 0 {
                word = "\(i)"
            }
            res.append(word)
        }
        return res
    }
}
