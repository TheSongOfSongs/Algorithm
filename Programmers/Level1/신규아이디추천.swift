import Foundation


func solution(_ new_id:String) -> String {
    
    var newId = new_id
    
    // 1. 대문자 -> 소문자
    newId = newId.lowercased()
    
    
    // 2. 알파벳 소문자, 숫자, 빼기, 밑줄, 마침표 빼고 모두 삭제
    var newId2: String = ""
    for letter in newId {
        if (letter.isLowercase || letter.isNumber || letter == "-" || letter == "_" || letter == ".") {
            newId2.append(letter)
        }
    }
    
    
    // 3. 마침표 2번 이상 -> 마침표 한 번
    var index = newId2.startIndex
    var nextIndex = newId2.index(after: index)
    while nextIndex < newId2.endIndex {
        if newId2[index] == ".",
           newId2[nextIndex] == "." {
            newId2.remove(at: nextIndex)
        } else {
            index = nextIndex
            nextIndex = newId2.index(after: index)
        }
    }
    
    
    // 4. 마침표가 처음이나 끝에 위치하면 제거
    if newId2.first == "." {
        newId2.removeFirst()
    }
    
    if newId2.last == "." {
        newId2.removeLast()
    }
    
    
    // 5. 빈 문자열 -> a 추가
    if newId2.isEmpty {
        newId2.append("a")
    }
    
    
    // 6. 16자 이상이면, 앞에 15개만 남기기
    if newId2.count >= 16 {
        let startIndex = newId2.startIndex
        let endIndex = newId2.index(startIndex, offsetBy: 15)
        newId2 = String(newId2[newId2.startIndex..<endIndex])
        
        if newId2.last == "." {
            newId2.removeLast()
        }
    }
    
    
    // 7. 2자 이하면, 마지막 문자를 길이가 3이 될 때까지 추가
    while newId2.count < 3 {
        if let last = newId2.last {
            newId2.append(last)
        } else {
            break
        }
    }
    
    
    return newId2
}
