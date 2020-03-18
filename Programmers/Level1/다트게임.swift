func solution(_ dartResult:String) -> Int {
    var scoreArray: [Int] = []
    var currentScore: Int = 0
    
    var ch: Character
    for i in 0..<dartResult.count {
        ch = dartResult[dartResult.index(dartResult.startIndex, offsetBy: i)]
        switch ch {
        case "S":
            scoreArray.append(currentScore)
            currentScore = 0
        case "D":
            currentScore *= currentScore
            scoreArray.append(currentScore)
            currentScore = 0
        case "T":
            currentScore *= currentScore * currentScore
            scoreArray.append(currentScore)
            currentScore = 0
        case "*":
            if scoreArray.endIndex >= 2 {
                scoreArray[scoreArray.endIndex-2] *= 2
            }
            if scoreArray.endIndex >= 1 {
                scoreArray[scoreArray.endIndex-1] *= 2
            }
        case "#":
            if scoreArray.endIndex >= 1 {
                scoreArray[scoreArray.endIndex-1] *= -1
            }
        default:
            currentScore = currentScore != 0 ? currentScore * 10 + Int(String(ch))! : Int(String(ch))!
        }
    
        
    }
    return scoreArray.reduce(0, +)
}
