import Foundation

func solution(_ arr:[Int]) -> Double {
    var mean = 0
    for element in arr {
        mean += element
    }
    return Double(mean)/Double(arr.count)
}
