/// https://leetcode.com/problems/unique-number-of-occurrences/
/// Time: O(N)
/// Space: 2 * O(N) = O(N)

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var dict = [Int: Int]()
        for num in arr {
            dict[num, default: 0] += 1
        }
        var set = Set<Int>(dict.values)
        return set.count == dict.values.count
    }
}
