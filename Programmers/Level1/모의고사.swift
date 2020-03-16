import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var result = [1:0, 2:0, 3:0]
    
    let ans1 = [1, 2, 3, 4, 5]
    let ans2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let ans3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5,]
    
    var arr1: Array<Int> = []
    var arr2: Array<Int> = []
    var arr3: Array<Int> = []
    
    for i in 0..<answers.count {
        arr1.append(ans1[ans1.index(ans1.startIndex, offsetBy: i%ans1.count)])
        arr2.append(ans2[ans2.index(ans2.startIndex, offsetBy: i%ans2.count)])
        arr3.append(ans3[ans3.index(ans3.startIndex, offsetBy: i%ans3.count)])
    }
    
    var temp = 0
    for i in 0..<answers.count {
        temp = answers[answers.index(answers.startIndex, offsetBy: i)]
        if temp == arr1[i] {
            result[1]! += 1
        }
        if temp == arr2[i] {
            result[2]! += 1
        }
        if temp == arr3[i] {
            result[3]! += 1
        }
    }
    
    if result.sorted(by: {$0.key < $1.key}).sorted(by: {$0.value > $1.value}).first!.value == 0 {
        return [1, 2, 3]
    } else {
        return result.sorted(by: {$0.key < $1.key}).sorted(by: {$0.value > $1.value})
            .filter({ $0.value == result.sorted(by: {$0.key < $1.key}).sorted(by: {$0.value > $1.value}).first!.value })
            .map( {$0.key} )
}

