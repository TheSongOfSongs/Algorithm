import Foundation

func solution(_ s:String) -> String {
    
    var upperCase: [Character] = []
    var lowerCase: [Character] = []
    
    for ch in s {
        let char = ch as Character
        if char.isUppercase {
            upperCase.append(char)
        } else {
            lowerCase.append(char)
        }
    }
    
    let uppperString = String(upperCase.sorted())
    let lowerString = String(lowerCase.sorted())
    
    let answer = lowerString.appending(uppperString)
    
    return answer
}
