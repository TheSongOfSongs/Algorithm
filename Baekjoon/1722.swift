// 수 입력받기
let num: Int = Int(readLine()!)!
let input: [Int] = readLine()!.split(separator: " ").map {Int($0)!}

if input[0] == 1 {
    getPermutation(input[1])
} else {
    whatNumber(Array(input[1...input.endIndex-1]))
}


func getPermutation(_ Kth: Int) {
    var k: Int = Kth
    var answer: [Int] = []
    var card: [Int] = []
    for i in 0..<num {
        card.append(num-i)
    }

    for i in 0..<num {
        let currentFactorial = getFactorial(num-i-1)
        var index = card.endIndex-1
        while currentFactorial < k {
            k -= currentFactorial
            index -= 1
        }
        answer.append(card[index])
        card.remove(at: index)
    }

    print(answer.map({String($0)}).joined(separator: " "))
}

func whatNumber(_ arr: [Int]) {
    let permu = arr
    var answer: Int = 1
    var card: [Int] = []
    for i in 0..<num {
        card.append(i+1)
    }
    for i in 0..<num {
        var index = card.startIndex
        let currentFactorial = getFactorial(num-i-1)

        while permu[i] > card[index] {
            answer += currentFactorial
            index += 1
        }
        card.remove(at: index)
    }
    print(answer)
}

func getFactorial(_ n: Int) -> Int {
    guard n > 1 else { return 1 }
    var answer: Int = 1
    for i in 1...n {
        answer *= i
    }
    return answer
}
