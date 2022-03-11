import Foundation

func solution(_ record:[String]) -> [String] {
    var nickNameMapping: [String: String] = [:]
    var result: [[String]] = []
    
    for current in record {
        let splitted = current.split(separator: " ").map({ String($0) })
        let type = splitted[0]
        let id = splitted[1]
        
        if splitted.count >= 3 {
            let nickName = splitted[2]
            if type == "Enter" {
                nickNameMapping[id] = nickName
                result.append([id, "님이 들어왔습니다."])
            } else if type == "Change" {
                nickNameMapping[id] = nickName
            }
        } else {
            result.append([id, "님이 나갔습니다."])
        }
    }
    
    return result.compactMap({ value in
        return (nickNameMapping[value[0]] ?? "") + value[1]
    })
}

