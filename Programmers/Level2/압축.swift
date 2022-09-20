func solution(_ msg:String) -> [Int] {
    var dict: [String: Int] = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": 6, "G": 7, "H": 8, "I": 9,
                               "J": 10, "K": 11, "L": 12, "M": 13, "N": 14, "O": 15, "P": 16, "Q": 17, "R": 18,
                               "S": 19, "T": 20, "U": 21, "V": 22, "W": 23, "X": 24, "Y": 25, "Z": 26]
    var answer: [Int] = []
    
    // 현재 ch부터 시작해 쌓아가면서 dict에서 존재하는 가장 긴 문자열 찾기
    // 만약 없으면 멈추고 dict에 추가해주기
    
    // 만약 있으면 answer에 dict-value넣어주고
    // 마지막 index부터 시작해서 다시 찾기
    
    var index = 0
    let msg = Array(msg)
    
    while true {
        var newIndex = index + 1
        
        if newIndex >= msg.count {
            answer.append(dict[String(msg[index])]!)
            break
        }
        
        while true {
            let newMsg = String(msg[index...newIndex])
            let oldMsg = String(msg[index...newIndex-1])
            
            if dict[newMsg] == nil {
                dict[newMsg] = dict.count + 1
                answer.append(dict[oldMsg]!)
                index = newIndex
                break
            } else {
                newIndex += 1
                
                if newIndex >= msg.count {
                    answer.append(dict[newMsg]!)
                    return answer
                }
            }
        }
    }
    
    return answer
}
