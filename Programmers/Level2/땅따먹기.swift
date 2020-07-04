import Foundation

func solution(_ land:[[Int]]) -> Int{

    var dp: [[Int]] = land

    for i in 1..<dp.count {
        let priorRow = dp[i-1]
        for j in 0..<land.first!.count {
            var filteredPriorRow = priorRow
            filteredPriorRow.remove(at: j)

            dp[i][j] = dp[i][j] + filteredPriorRow.max()!
        }
    }

    return dp.last!.max()!
}
