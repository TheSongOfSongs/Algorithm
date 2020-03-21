import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var dayOfProgress = progresses
    var answer: [Int] = []
    var topStack = 0
    var firstDayOfProgress = 0
    
    for i in 0..<progresses.count {
        let restProgress = 100 - dayOfProgress[i]
        dayOfProgress[i] = restProgress%speeds[i] > 0 ? restProgress/speeds[i] + 1 : restProgress/speeds[i]
    }
    
    answer.append(1)
    topStack = dayOfProgress[0]
    
    while !dayOfProgress.isEmpty {
        firstDayOfProgress = dayOfProgress.first!
        if topStack >= firstDayOfProgress {
            answer[answer.endIndex-1] += 1
        } else {
            topStack = firstDayOfProgress
            answer.append(1)
        }
        dayOfProgress.remove(at: 0)
    }
    answer[0] -= 1
    return answer
}
