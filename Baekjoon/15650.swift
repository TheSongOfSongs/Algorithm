//
//  main.swift
//  ps
//
//  Created by Jinhyang Kim on 2022/03/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map({ Int($0)! })
// 1~N까지 자연수
let n = input[0]

// m개 뽑기
let m = input[1]

var visited = Array(repeating: false, count: n + 1)
var depth = 0
var stack: [Int] = []
var answer: [[Int]] = []


func dfs(depth: Int) {
    if depth == m {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    } else {
        for i in (stack.last ?? 1)...n {
            if !visited[i] {
                visited[i] = true
                stack.append(i)
                
                dfs(depth: depth + 1)
                
                visited[i] = false
                stack.removeLast()
            }
        }
    }
}

dfs(depth: 0)

