import Foundation

func solution(_ s:String) -> Bool {
    var index = 0
    
    let arr = Array(s)
    
    for i in 0..<arr.count {
        if index < 0 {
            break
        }

        if i > arr.count/2,
           index > i {
            break
        }
        
        if arr[i] == "(" {
            index += 1
        } else {
            index -= 1
        }
    }
    
    return index == 0
}

