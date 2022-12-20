import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    
    let arr = Array(s)
    var x: Character = arr[0]
    var xCount = 1
    var nonXCount = 0
    var index = 1
    
    while index < arr.count {
        if xCount == nonXCount {
            result += 1
            xCount = 0
            nonXCount = 0
            x = arr[index]
        }
        
        if x == arr[index] {
            xCount += 1
        } else {
            nonXCount += 1
        }
        
        index += 1
    }
    
    return result + (xCount > 0 ? 1 : 0)
}
