//
//  main.swift
//  BaekJoon
//
//  Created by Jinhyang on 2021/08/03.
//

import Foundation

let commandCount = Int(readLine()!)!
var stack: [Int] = []

func push(_ num: Int) {
  stack.insert(num, at: stack.startIndex)
}

func pop() -> Int {
  return stack.isEmpty ? -1 : stack.remove(at: stack.startIndex)
}

func size() -> Int {
  return stack.count
}

func empty() -> Int {
  return stack.isEmpty ? 1 : 0
}

func top() -> Int {
  return stack.first ?? -1
}


for _ in 0..<commandCount {
  let commandLine = readLine()!.components(separatedBy: " ")
  if let command = commandLine.first {
    switch command {
    case "push":
      if let numString = commandLine.last,
         let num = Int(numString) {
        push(num)
      }
    case "pop":
      print(pop())
    case "top":
      print(top())
    case "size":
      print(size())
    case "empty":
      print(empty())
    default:
      break
    }
  }
}

