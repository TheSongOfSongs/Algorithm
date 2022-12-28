import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    let pNum = Int(p)!
    let pCount = p.count
    let t = Array(t).map({ String($0) })
    
    for i in 0...t.count - p.count {
        let tNum = Int(t[i..<i+pCount].reduce("", +))!
        result += tNum <= pNum ? 1 : 0
    }
    
    return result
}
