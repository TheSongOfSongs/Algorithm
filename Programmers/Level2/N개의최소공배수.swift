import Foundation

func solution(_ arr:[Int]) -> Int {
    var arr = arr
    var divider = 2
    var result = 1
    
    while true {
        if arr.first(where: { $0 >= divider}) == nil {
            break
        }
        
        if arr.filter({ $0%divider == 0 }).count > 1 {
            arr = arr.map({
                if $0%divider == 0 {
                    return $0/divider
                } else {
                    return $0
                }
            })
            result *= divider
        } else {
            divider += 1
        }
    }
    
    return result * arr.reduce(1, *)
}
