/// https://leetcode.com/problems/reformat-date/
/// Time: 
/// Space: 

class Solution {
    func reformatDate(_ date: String) -> String {
        let comp = date.split(separator: " ")
        let day = self.decodeDay(String(comp[0]))
        let mon = self.decodeMonth(String(comp[1]))
        let year = String(comp[2])
        return [year, mon, day].joined(separator: "-")
    }
    
    func decodeMonth(_ s: String) -> String {
        let dict = ["Jan": "01",
                    "Feb": "02",
                    "Mar": "03",
                    "Apr": "04",
                    "May": "05",
                    "Jun": "06",
                    "Jul": "07",
                    "Aug": "08",
                    "Sep": "09",
                    "Oct": "10",
                    "Nov": "11",
                    "Dec": "12"]
        return dict[s]!
    }
    
    func decodeDay(_ s: String) -> String {
        let num = s.index(s.startIndex, offsetBy: s.count-3)
        let sub = s[s.startIndex...num]
        return sub.count == 1 ? "0\(sub)" : String(sub)
    }
}
