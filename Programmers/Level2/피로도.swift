import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var answer:Int = 0
    bfs(dungeons: dungeons, answer: &answer, k:k, count: 0)
    return answer
}

func bfs(dungeons: [[Int]], answer: inout Int, k: Int, count: Int) {
    answer = max(answer, count)
    for (index, dungeon) in dungeons.enumerated() {
        var newDungeon: [[Int]] = dungeons
        
        // 조건을 만족하면 던전 O
        if dungeon[0] <= k {
            let energy = k - dungeon[1]
            
            // 해당 길은 다녀온 것으로 체크
            newDungeon.remove(at: index)
            bfs(dungeons: newDungeon, answer: &answer, k: energy, count: count + 1)
        }
    }
}
