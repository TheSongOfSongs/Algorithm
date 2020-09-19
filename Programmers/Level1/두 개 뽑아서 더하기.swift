//
//  main.swift
//  aa
//
//  Created by Jin on 2020/09/19.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    let length = numbers.count
    var result: Set<Int> = []
    
    for i in 0..<length-1 {
        for j in i+1..<length {
            result.insert(numbers[i] + numbers[j])
        }
    }
    
    return result.sorted()
}

print(solution([5,0,2,7]))
