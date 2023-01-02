import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var result = 0
    var i = 3
    var ingredient = ingredient
    
    while 0..<ingredient.count ~= i {
        if i-3 >= 0,
           ingredient[i-3...i] == [1, 2, 3, 1] {
            ingredient.removeSubrange(i-3...i)
            result += 1
            i -= 3
        } else {
            i += 1
        }
    }
    
    return result
}
