/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var left = 1
        var right = n
        
        while true {
            let middle = (left + right)/2
            let guess = guess(middle)
            
            if guess == 0 {
                return middle
            } else if guess == 1 {
                left = middle+1
            } else if guess == -1 {
                right = middle-1
            }
        }
    }
}
