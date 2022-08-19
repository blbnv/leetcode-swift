/// https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var i = arr.count - 1
        var soFar = -1
        var ans = [Int](repeating: 0, count: arr.count)
        while i >= 0 {
            ans[i] = soFar
            soFar = max(soFar, arr[i])
            i -= 1
        }
        return ans
    }
}
