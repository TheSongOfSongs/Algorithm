class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        let rowLength = grid.count
        let columnLength = grid.first!.count
        var result = 0
        
        for (i, row) in grid.enumerated() {
            for (j, num) in row.enumerated() {
                // 세로
                if i == 0 {
                    if num == 1 {
                        result += 1
                    }
                } else {
                    if num == 0 && grid[i-1][j] == 1 || num == 1 && grid[i-1][j] == 0 {
                        result += 1
                    }
                }
                
                if i == rowLength - 1,
                   num == 1 {
                    result += 1
                }
                
                
                // 가로
                if j == 0 {
                    if num == 1 {
                        result += 1
                    }
                } else {
                    if num == 0 && row[j-1] == 1 || num == 1 && row[j-1] == 0 {
                        result += 1
                    }
                }
                
                if j == columnLength - 1,
                   num == 1 {
                    result += 1
                }
            }
        }
        
        return result
    }
}
