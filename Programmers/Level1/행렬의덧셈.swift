import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr3: [[Int]] = Array(repeating:Array(repeating:0, count: arr1[0].count), count: arr1.count)

    var i = 0
    var j = 0
    
    if arr1.count == 1 {
        repeat {
            arr3[i] = arr1[i] + arr2[i]
            i += 1
        } while i < arr3.count
    } else {
        
        repeat {
            repeat {
                arr3[i][j] = arr1[i][j] + arr2[i][j]
                j += 1
            } while j < arr3[0].count
            j = 0
            i += 1
            
        } while i < arr3.count

    }
    
    return arr3
}

