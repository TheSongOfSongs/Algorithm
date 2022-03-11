import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var answer: [Int] = []
    
    var matrix: [[Int]] = []
    
    queries.forEach { query in
        let x1 = query[0] - 1
        let y1 = query[1] - 1
        let x2 = query[2] - 1
        let y2 = query[3] - 1
        
        // 1. 행렬 만들기
        for i in 0..<rows {
            var row: [Int] = []
            for j in 1...columns {
                row.append(i*columns + j)
            }
            matrix.append(row)
        }
        
        var result = matrix[x1][y1]
        
        // 2. queries 돌기
        let corner2 = matrix[x1][y2]
        let corner3 = matrix[x2][y2]
        let corner4 = matrix[x2][y1]
        
        for i in stride(from: y2, through: y1+1, by: -1) {
            let new = matrix[x1][i-1]
            matrix[x1][i] = new
            result = min(result, new)
        }
        
        for i in stride(from: x2, through: x1+1, by: -1) {
            let new = matrix[i-1][y2]
            matrix[i][y2] = new
            result = min(result, new)
        }
        
        for i in stride(from: y1, through: y2-1, by: 1) {
            let new = matrix[x2][i+1]
            matrix[x2][i] = new
            result = min(result, new)
        }

        for i in stride(from: x1, through: x2-1, by: 1) {
            let new = matrix[i+1][y1]
            matrix[i][y1] = new
            result = min(result, new)
        }
        
        matrix[x1+1][y2] = corner2
        matrix[x2][y2-1] = corner3
        matrix[x2-1][y1] = corner4
        
        result = min(result, corner2, corner3, corner4)
        answer.append(result)
    }
    
    return answer
}
