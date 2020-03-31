var score = readLine()!.split(separator: " ").map({Int($0)!})
let index = score.remove(at: score.firstIndex(of: score.max()!)!)
print(score.max()!)
