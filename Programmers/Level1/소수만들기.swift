import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                
                var flag = true
                
                for i in 2..<sum/2 {
                    if sum % i == 0 {
                        flag = false
                        break
                    }
                }
                
                if flag {
                    answer += 1
                }
            }
        }
    }

    return answer
}
