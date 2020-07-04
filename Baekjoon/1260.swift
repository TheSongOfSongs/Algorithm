import Foundation

var dfsResult: String = ""
var bfsResult: String = ""

let input = readLine()!.split(separator: " ").map({Int($0)!})

let node = input[0]
let line = input[1]
let start = input[2]

var array: [[Bool]] = Array(repeating: Array(repeating: false, count: node+1), count: node+1)
var visited: [Bool] = Array(repeating: false, count: node+1)

for _ in 0..<line {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    array[input[0]][input[1]] = true
    array[input[1]][input[0]] = true
}

visited[start] = true


func dfs(start: Int) {
    dfsResult.append("\(start) ")

    for i in 1...node {
        if array[start][i] && !visited[i] {
            visited[i] = true
            dfs(start: i)
        }
    }
}


func bfs(start: Int) {
    var visited = Array(repeating: false, count: node+1)
    var start: Int = start
    var queue: [Int] = [start]
    visited[start] = true

    while !queue.isEmpty {
        start = queue.first!
        queue.removeFirst()
        bfsResult.append("\(start) ")

        for i in 1...node {
            if array[start][i] && !visited[i] {
                visited[i] = true
                queue.append(i)
            }
        }
    }
}

dfs(start: start)
bfs(start: start)

dfsResult.removeLast()
bfsResult.removeLast()

print(dfsResult)
print(bfsResult)
