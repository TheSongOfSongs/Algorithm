import Foundation

func solution(_ s:String) -> Bool {
    
    guard let _:Int = Int(s) else {
        return false
    }
    
    if s.count == 4 || s.count == 6 {
        return true
    }
    else {
        return false
    }
}
