import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    let sum = brown + yellow
    
    for i in 3..<sum where sum%i == 0 {
        let row = sum/i
        let column = i
        
        if (row-2)*(column-2) == yellow {
            return [row, column]
        }
    }
    
    return []
}
