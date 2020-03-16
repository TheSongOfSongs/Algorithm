import Foundation

func solution(_ phone_number:String) -> String {
    
    var answer: String = ""
    
    for _ in 0..<phone_number.count-4 { answer.append("*") }
    
    let startIndex = phone_number.index(phone_number.startIndex, offsetBy: phone_number.count-4)
    answer += phone_number[startIndex..<phone_number.endIndex]
    return answer
}
