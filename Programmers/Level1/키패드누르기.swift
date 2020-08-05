import Foundation

var result: String = ""
var leftStart: Int = 10
var rightStart: Int = 12

func moveLeft(number: Int) {
    result.append("L")
    leftStart = number
}

func moveRight(number: Int) {
    result.append("R")
    rightStart = number
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    for number in numbers {
        if number == 1 || number == 4 || number == 7 {
            moveLeft(number: number)
        } else if number == 3 || number == 6 || number == 9 {
            moveRight(number: number)
        } else {
            let distance = number == 0 ? 11 : number
            var leftDistance = abs(leftStart - distance)
            leftDistance = leftDistance/3 + leftDistance%3
            var rightDistance = abs(rightStart - distance)
            rightDistance = rightDistance/3 + rightDistance%3
            
            if leftDistance > rightDistance {
                moveRight(number: distance)
            } else if leftDistance < rightDistance {
                moveLeft(number: distance)
            } else {
                if hand == "right" {
                    moveRight(number: distance)
                } else {
                    moveLeft(number: distance)
                }
            }
        }
    }
    
    return result
}
