/// https://leetcode.com/problems/subdomain-visit-count
/// Time: O(N)
/// Space: O(N)

class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var visits = [String: Int]()
        
        for cp in cpdomains {
            let s = self.domain(cp)
            let n = self.number(cp)
            let sub = self.subdomains(s)
            
            for subd in sub {
                visits[subd, default: 0] += n
            }
        }
        
        var ans = [String]()
        for (k, v) in visits {
            let vis = "\(v)" + " " + k
            ans.append(vis)
        }
        return ans
    }
    
    func subdomains(_ string: String) -> [String] {
        var ans = [String]()
        var parts = string.split(separator: ".")
        while parts.count >= 1 {
            let sub = parts.joined(separator: ".")
            ans.append(sub)
            parts.removeFirst()
        }
        return ans
    }
    
    func number(_ string: String) -> Int {
        Int(string.split(separator: " ")[0])!
    }
    
    func domain(_ string: String) -> String {
        String(string.split(separator: " ")[1])
    }
}
