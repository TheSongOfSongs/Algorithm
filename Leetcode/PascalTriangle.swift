class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 {
            return [[1]]
        } else if numRows == 2 {
            return [[1], [1, 1]]
        }
        
        var answer: [[Int]] = [[1], [1, 1]]
        
        for _ in 3...numRows {
            var arr = [1]
            let lastRow = answer.last!
            for j in 0..<lastRow.count-1 {
                arr.append(lastRow[j] + lastRow[j+1])
            }
            
            answer.append(arr + [1])
        }
        
        return answer
    }
}
