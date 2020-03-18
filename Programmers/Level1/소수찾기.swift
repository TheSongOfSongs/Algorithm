import Foundation

func solution(_ n:Int) -> Int {
    var array = Array(repeating: -1, count: n+1)
    
    for i in 2...n {
        
        if array[i] == -1 { array[i] = 0 }
        
        for j in 2...i {
            if i*j > n { break }
            array[i*j] = 1
        }
    }

    return array.filter({$0 == 0}).count
}

