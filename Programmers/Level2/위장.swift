import Foundation

func solution(_ clothes:[[String]]) -> Int {

    var dict: [String: Int] = [:]

    for item in clothes {
        if dict[item.last!] == nil {
            dict[item.last!] = 1
        } else {
            dict[item.last!]! += 1
        }
    }

    let result = dict.map({$0.value + 1}).reduce(1, *)

    return result
}
