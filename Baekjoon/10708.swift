let friends = Int(readLine()!)!
let num = Int(readLine()!)!
let target: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
var score: [Int] = Array(repeating: 0, count: friends)

for i in 0..<num {
    let arr: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
    let currentTarget = target[i]
    var count: Int = friends

    for j in 0..<friends {

        if currentTarget == arr[j] {

            score[j] += 1
            count -= 1
        }
    }

    score[currentTarget-1] += count
}

for item in score {
    print(item)
}
