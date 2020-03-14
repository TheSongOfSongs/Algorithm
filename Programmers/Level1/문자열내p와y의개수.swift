import Foundation

func solution(_ s:String) -> Bool
{
    var numP = 0
    var numY = 0
    
    for i in s {
        if i == "P" || i == "p" {
            numP += 1
        } else if i == "Y" || i == "y" {
            numY += 1
        }
    }
    
    return numP == numY ? true : false

}
