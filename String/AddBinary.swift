// https://leetcode.com/problems/add-binary/
// time O(N) where N is max(a,b)
// space O(1)

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let aa = Array(a)
        let ab = Array(b)
        var i1 = a.count-1
        var i2 = b.count-1
        var carry = 0
        var result = ""
        
        while i1 >= 0 || i2 >= 0 || carry != 0 {
            let one = i1 < 0 ? 0 : aa[i1].wholeNumberValue!
            let two = i2 < 0 ? 0 : ab[i2].wholeNumberValue!
            let sum = one + two + carry
            
            switch sum {
            case 0, 1:
                result = "\(sum)" + result
                carry = 0;
                break
            case 2:
                result = "0" + result
                carry = 1
            case 3:
                result = "1" + result
                carry = 1
            default: fatalError()
            }
            
            i1 -= 1
            i2 -= 1
        }
        
        return result
    }
}
