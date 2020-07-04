/// test case 8, 9 실패

import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {

    var arr: [[Bool]] = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
    for i in 0..<edge.count {
        arr[edge[i][0]][edge[i][1]] = true
        arr[edge[i][1]][edge[i][0]] = true
    }

    return bfs(arr: arr, start: 1, node: n)
}



func bfs(arr: [[Bool]], start: Int, node: Int) -> Int {
    var visited = Array(repeating: false, count: node+1)
    visited[start] = true

    var queue: [Int] = [start]
    var currentElement = start
    var distance: [Int] = Array(repeating: 0, count: node+1)
    var maxDistance = 0

    while !queue.isEmpty {
        currentElement = queue.removeFirst()
        let currentDistance = distance[currentElement]
        maxDistance = max(maxDistance, currentDistance)

        for i in 1...node {

            if arr[currentElement][i] && !visited[i] {
                visited[i] = true
                queue.append(i)
                distance[i] = currentDistance+1
            }
        }
    }

    return distance.filter({$0 == maxDistance}).count
}

print(solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]))
