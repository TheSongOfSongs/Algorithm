//
//  main.swift
//  ps
//
//  Created by Jinhyang Kim on 2022/03/25.
//

import Foundation

let n = Int(readLine()!)!
var map: [[Int]] = []

// 지도에 표시된 동
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)

for _ in 0..<n {
    map.append(readLine()!.map({ Int(String($0))! }))
}

var count = 0
var depth = 0 // 동 개수
var depths: [Int] = []
let adjacents = [(1, 0), (-1, 0), (0, 1), (0, -1)]

for x in 0..<n {
    for y in 0..<n {
        if !visited[x][y],
           map[x][y] == 1 {
            dfs(x: x, y: y)
            depths.append(depth)
            depth = 0
        }
    }
}

print(depths.count)
depths.sorted().forEach { n in
    print(n)
}


func dfs(x: Int, y: Int) {
    depth += 1
    visited[x][y] = true
    
    for adjacent in adjacents {
        let adjX = x + adjacent.0
        let adjY = y + adjacent.1
        
        if (0..<n).contains(adjX),
           (0..<n).contains(adjY),
           !visited[adjX][adjY],
           map[adjX][adjY] == 1 {
            dfs(x: adjX, y: adjY)
        }
    }
}

