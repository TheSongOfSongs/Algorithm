import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result: [Int] = []
    
    // 약관 종류별 유효기간 설정
    var dict: [String.SubSequence: Int] = [:]
    for term in terms {
        let term = term.split(separator: " ")
        dict[term[0]] = Int(term[1])!
    }
    
    let today: Int = {
        let t = today.split(separator: ".").map({Int($0)!})
        return t[0]*12*28 + t[1]*28 + t[2]
    }()
    
    // privacies 돌면서 유효날짜 < 오늘날짜 확인하기
    for (index, privacy) in privacies.enumerated() {
        let privacy = privacy.split(separator: " ")
        let date: Int = {
            let d = privacy[0].split(separator: ".").map({Int($0)!})
            return d[0]*12*28 + d[1]*28 + d[2] + dict[privacy[1]]! * 28
        }()
        
        if today >= date {
            result.append(index + 1)
        }
    }
    
    return result
}
