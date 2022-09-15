import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    // 획득한 점수를 기록하는 dict
    var scores: [Character: Int] = ["R": 0,
                                 "T":0,
                                 "C":0,
                                 "F": 0,
                                 "J": 0,
                                 "M": 0,
                                 "A": 0,
                                 "N": 0
    ]
    
    let paris: [[Character]] = [ ["R", "T"],
                                 ["C", "F"],
                                 ["J", "M"],
                                 ["A", "N"]
    ]
    
    for i in 0..<survey.count {
        let question = Array(survey[i])
        let choice = choices[i]
        
        if choice < 4 {
            scores[question[0]]! += (4 - choice)
        } else if choice > 4 {
            scores[question[1]]! += (choice - 4)
        }
    }
    
    var result = ""
    
    for pair in paris {
        let type = pair
            .sorted(by: { $0 < $1 })
            .sorted(by: { scores[$0]! > scores[$1]! })
        
        result += String(type[0])
    }
    
    return result
}
