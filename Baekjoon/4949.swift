//
//  main.swift
//  BaekJoon
//
//  Created by Jinhyang on 2021/08/03.
//

import Foundation

while true {
  let line = readLine()!
  if line == "." {
    break
  }
  
  let array: [Character] = Array(line)
  var stack: [Character] = []
  
  var isStopped = false
  
  for (_, element) in array.enumerated() {
    if element == "(" || element == "[" {
      stack.insert(element, at: stack.startIndex)
    }
    
    if element == ")" {
      if let first = stack.first,
         first == "(" {
        stack.removeFirst()
      } else {
        isStopped = true
        break
      }
    }
    
    if element == "]" {
      if let first = stack.first,
         first == "[" {
        stack.removeFirst()
      } else {
        isStopped = true
        break
      }
    }
  }
  
  if isStopped || !stack.isEmpty {
    print("no")
  } else {
    print("yes")
  }
}

