class Solution {
    func combination<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
        var result = [[T]]()
        if array.count < n { return result }

        func cycle(_ index: Int, _ now: [T]) {
            if now.count == n {
                result.append(now)
                return
            }
            
            for i in index..<array.count {
                cycle(i + 1, now + [array[i]])
            }
        }
        
        cycle(0, [])
        
        return result
    }
    
    func time(h: Int, min: Int) -> String {
        var minStr = "\(min)"
        
        if min < 10 {
            minStr = "0\(minStr)"
        }
        
        return "\(h):\(minStr)"
    }
    
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var result: [String] = []
        
        let h = [1, 2, 4, 8]
        let m = [1, 2, 4, 8, 16, 32]
        
        for i in 0...turnedOn {
            let hCount = i
            let minCount = turnedOn - i
            
            let hCombi = combination(h, hCount)
            let minCombi = combination(m, minCount)
            
            if ((hCombi.first ?? []).count + (minCombi.first ?? []).count) < turnedOn {
                continue
            }
            
            var hArr = hCombi.map({ $0.reduce(0, +) })
            var minArr = minCombi.map({ $0.reduce(0, +) })
            
            
            if hArr.isEmpty {
                hArr.append(0)
            }

            if minArr.isEmpty {
                minArr.append(0)
            }
            
            for j in 0..<hArr.count where hArr[j] < 12 {
                for k in 0..<minArr.count where minArr[k] < 60 {
                    result.append(time(h: hArr[j], min: minArr[k]))
                }
            }
        }
        
        return result.sorted(by: { first, second in
            let first = first.split(separator: ":").map({ Int($0)! })
            let second = second.split(separator: ":").map({ Int($0)! })
            
            if first.first! < second.first! {
                return true
            } else if first.first! > second.first! {
                return false
            } else {
                return first.last! < second.last!
            }
        })
    }
}
