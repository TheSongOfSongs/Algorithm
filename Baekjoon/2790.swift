let racerCount: Int = Int(readLine()!)!
var score: [Int] = []
var answer: Int = 0

for _ in 0..<racerCount {
    score.append(Int(readLine()!)!)
}

score.sort(by: {$0 > $1})

var currentMax: Int = score.first! + 1

for i in 0..<racerCount {
    if currentMax <= score[i] + racerCount {
        answer += 1
        currentMax = max(currentMax, score[i] + i + 1)
    } else {
        break
    }
}

print(answer)
