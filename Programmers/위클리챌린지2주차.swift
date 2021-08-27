import Foundation

func solution(_ scores:[[Int]]) -> String {
  var result = ""
  
  for i in 0..<scores.count {
    var studentScores: [Int] = []
    for j in 0..<scores.count {
      studentScores.append(scores[j][i])
    }
    
    if let maxScore = studentScores.max(),
       studentScores[i] == maxScore,
       studentScores.filter({ $0 == maxScore }).count == 1 {
      studentScores.remove(at: i)
    } else if let minScore = studentScores.min(),
              studentScores[i] == minScore,
              studentScores.filter({ $0 == minScore }).count == 1 {
      studentScores.remove(at: i)
    }
    
    let sum = studentScores.reduce(0, +) / studentScores.count
    switch sum {
    case _ where sum >= 90:
      result += "A"
    case _ where sum >= 80:
      result += "B"
    case _ where sum >= 70:
      result += "C"
    case _ where sum >= 50:
      result += "D"
    default:
      result += "F"
    }
  }
  
  return result
}
