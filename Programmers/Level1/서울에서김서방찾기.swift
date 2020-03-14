import Foundation

func solution(_ seoul:[String]) -> String {
    var x: Int = 0
    var result: String
    
    for i in seoul {
        guard String(i) != "Kim" else {
            result = "김서방은 " + String(x) + "에 있다"
            return result
        }
        x += 1
    }
    
    result = "김서방은 " + String(x) + "에 있다"
    return result
}
