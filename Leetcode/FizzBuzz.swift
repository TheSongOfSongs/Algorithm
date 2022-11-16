class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var answer: [String] = []
        
        for i in 1...n {
            if i%3 == 0,
               i%5 == 0 {
                answer.append("FizzBuzz")
                continue
            }
            
            if i%3 == 0 {
                answer.append("Fizz")
                continue
            }
            
            if i%5 == 0 {
                answer.append("Buzz")
                continue
            }
            
            answer.append("\(i)")
        }
        
        
        return answer
    }
}
