import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var who: Int = 0
    var circle: Int = 0

    for i in 1..<words.count {
        if words[i].first != words[i-1].last || (words[0..<i].firstIndex(of: words[i]) != nil){
            who = i%n + 1
            circle = i/n + 1
            break
        }
    }

    return [who, circle]
}
