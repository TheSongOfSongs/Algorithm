import Foundation

func solution(_ s:String) -> String {
    var answer = ""
    var blank: Int = 1
    var ch: String.Element

    for i in 0..<s.count {
        ch = s[s.index(s.startIndex, offsetBy: i)]
        if ch == " " {
            blank = 1
            answer.append(" ")
        } else {
            if blank%2 != 0 {
                answer.append(ch.uppercased())
            } else {
                answer.append(ch.lowercased())
            }
            blank += 1
        }
    }
    return answer
}
