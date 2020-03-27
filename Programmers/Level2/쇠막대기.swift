import Foundation

func solution(_ arrangement:String) -> Int {
    var stack: [Int] = []
    var i = 0
    var answer = 0
    
    for ch in arrangement {
        if ch == "(" {
            stack.append(i)
        } else {
            let last = stack.popLast()!
            if last + 1 == i {
                answer += stack.count
            } else {
                answer += 1
            }
        }
        i += 1
    }
    return answer
}

