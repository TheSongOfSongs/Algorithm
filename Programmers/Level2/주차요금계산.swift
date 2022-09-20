import Foundation

func parkingMinutes(inTime: String, outTime: String) -> Int {
    let outTime = outTime.split(separator: ":").map({ Int($0)! })
    let inTime = inTime.split(separator: ":").map({ Int($0)! })
    return outTime[0]*60 + outTime[1] - (inTime[0]*60 + inTime[1])
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    func fee(min: Int) -> Int {
        var min = min
        if min <= fees[0] {
            return fees[1]
        } else {
            min -= fees[0]
        }
        
        // 기본 요금
        var fee = fees[1]
        
        // 추가 요금
        if min%fees[2] != 0 {
            fee += (min / fees[2] + 1) * fees[3]
        } else {
            fee += min / fees[2] * fees[3]
        }
        
        return fee
    }
    
    
    // [차: 머문 시간]
    var times: [String: Int] = [:]
    
    // [차: 입차 시간]
    var inTime: [String: String] = [:]
    
    for record in records {
        let arr = record.split(separator: " ").map({ String($0) })
        let time = arr[0]
        let carNumber = arr[1]
        let type = arr[2]
        
        if type == "IN" {
            inTime[carNumber] = time
        } else {
            times[carNumber] = (times[carNumber] ?? 0) + parkingMinutes(inTime: inTime[carNumber]!, outTime: time)
            inTime.removeValue(forKey: carNumber)
        }
    }
    
    // 출차한 차가 없으면 23:59로 출차 시간 간주
    for (carNumber, inTime) in inTime {
        let outTime = "23:59"
        times[carNumber] = (times[carNumber] ?? 0) + parkingMinutes(inTime: inTime, outTime: outTime)
    }
    
    var answer: [Int] = []
    
    for time in times.sorted(by: { $0.key < $1.key }) {
        answer.append(fee(min: time.value))
    }
    
    return answer
}
