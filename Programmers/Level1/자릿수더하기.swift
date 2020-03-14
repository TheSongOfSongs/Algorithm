import Foundation

func solution(_ n:Int) -> Int
{

    var answer:Int = 0
    let nString: String = String(n)

    for i in nString
    {
        answer += Int(String(i))!
    }
    
    return answer
}
