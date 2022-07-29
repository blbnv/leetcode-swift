///
/// Time: 3 * O(N) = O(N)
/// Space: O(N) + O(N) = O(N)

/// Count prefix product and suffix product and work with them then.
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var pref = [Int]()
        var suf = [Int]()
        var p = 1
        var s = 1
        let count = nums.count
        
        for i in 0..<count {
            p = p * nums[i]
            s = s * nums[count-i-1]
            pref.append(p)
            suf.insert(s, at: 0)
        }
        
        var res = [suf[1]]
        
        for i in 1..<count-1 {
            let l = pref[i-1]
            let r = suf[i+1]
            res.append(l*r)
        }
        
        res.append(pref[count-2])
        
        return res
    }
}
