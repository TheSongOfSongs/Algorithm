import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    // 이중 array 만들기
    var mapping: [String:Int] = [:]
    for (num, id) in id_list.enumerated() {
        mapping[id] = num
    }
    
    var arr = Array(repeating: Array(repeating: false, count: id_list.count), count: id_list.count)
    
    // report 순회하면서 arr원소 true로 할당
    for names in report {
        let splitted = names.split(separator: " ")
        let iIndex = mapping[String(splitted[0])]!
        let jIndex = mapping[String(splitted[1])]!
        arr[iIndex][jIndex] = true
    }
    
    // [i][j]에서 j열을 더했을 때 k보다 많은 것들 따로 뽑아내기
    var reportedIndex: [Int] = []
    for j in 0..<arr.count {
        var result = 0
        for i in 0..<arr.count {
            if arr[i][j] {
                result += 1
            }
        }
        
        if result >= k {
            reportedIndex.append(j)
        }
    }

    // 뽑아낸 것들을 포함하는 i들은 result에 +1
    var result: [Int] = Array(repeating: 0, count: id_list.count)
    for (i, element) in arr.enumerated() {
        for index in reportedIndex where element[index] {
            result[i] += 1
        }
    }

    return result
}
