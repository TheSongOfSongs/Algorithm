import Foundation

var answer = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {

    dfs(numbers, target: target, index: 0)

    return answer
}

func dfs(_ numbers: [Int], target: Int, index: Int) {
    if index == numbers.count {
        let sum = numbers.reduce(0, +)
        if sum == target {
            answer += 1
        }
    } else {
        dfs(numbers, target: target, index: index+1)

        var numbers = numbers
        numbers[index] *= -1
        dfs(numbers, target: target, index: index+1)
    }
}
