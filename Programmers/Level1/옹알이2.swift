import Foundation

func solution(_ babbling:[String]) -> Int {
    var result = 0
    
    
    func check(word: String, words: [String], count: Int, prior: String) -> (String, String)? {
        guard word.count >= count else { return nil }
        
        var word = word
        let startIndex = word.startIndex
        let endIndex = word.index(startIndex, offsetBy: count)
        let w = String(word[startIndex..<endIndex])
        
        // 2. 같으면 이전 단어와 같은지 확인
        guard words.contains(w) else {
            return nil
        }
        
        // 2-2. 같음 -> 넘어가기
        guard w != prior else {
            return nil
        }
        
        // 2-1. 같지 않음 -> 앞부분 잘라내기 / prior 단어 세팅
        word.removeSubrange(startIndex..<endIndex)
        return (word, w)
    }
    
    for word in babbling {
        var word = word
        var prior = ""
        
        while true {
            if let result = check(word: word, words: ["ye", "ma"], count: 2, prior: prior) {
                word = result.0
                prior = result.1
                continue
            }
            
            if let result = check(word: word, words: ["aya", "woo"], count: 3, prior: prior) {
                word = result.0
                prior = result.1
                continue
            }
            
            break
        }
        
        if word.isEmpty {
            result += 1
        }
    }
    
    return result
}
