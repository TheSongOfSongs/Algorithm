let input = readLine()!.split(separator: " ").map({ Int($0)! })
let N = input[0]
let K = input[1]
var score: [[Int]] = []
var result = 1
var stop = false
var kScore: [Int] = []

for _ in 0..<N {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    if arr.first! == K {
        kScore = arr
    } else {
        score.append(arr)
    }
}

score = [kScore] + score
score = score.sorted(by: {$0[3]>$1[3]}).sorted(by: {$0[2] > $1[2]}).sorted(by: {$0[1] > $1[1]})

for item in score {
    if item == kScore {
        break
    } else {
        result += 1
    }
}

print(result)
