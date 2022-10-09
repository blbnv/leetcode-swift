/// https://leetcode.com/problems/letter-combinations-of-a-phone-number/

class Solution {
    let dict: [String: [String]] = [
        "2": ["a","b","c"],
        "3": ["d","e","f"],
        "4": ["g","h","i"],
        "5": ["j","k","l"],
        "6": ["m","n","o"],
        "7": ["p","q","r","s"],
        "8": ["t","u","v"],
        "9": ["w","x","y","z"]
    ]
    
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 1 else {
            return digits.count == 0 ? [] : dict[digits]!
        }
        var result: [String] = []
        var copy = digits
        var last = String(copy.removeLast())
        let combinations = self.letterCombinations(copy)
        for letter in dict[last]! {
            for comb in combinations {
                let candidate = "\(comb)\(letter)"
                result.append(candidate)
            }
        }
        return result 
    }
}
