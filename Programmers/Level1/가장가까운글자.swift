import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var dict: [Character: Int] = [:]
    
    let arr = Array(s)
    for (index, ch) in arr.enumerated() {
        if let loc = dict[ch] {
            result.append(index-loc)
        } else {
            result.append(-1)
        }
        
        dict[ch] = index
    }
    
    
    return result
}
