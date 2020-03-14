import Foundation

func solution(_ s:String) -> String {
    
    let index1 = s.index(s.startIndex, offsetBy: s.count/2)

    if s.count%2 != 0 {
       return String(s[index1])
    } else {
        let index2 = s.index(s.startIndex, offsetBy: s.count/2-1)
        return String(s[index2...index1])
    }
}
