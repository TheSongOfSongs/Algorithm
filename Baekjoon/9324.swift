let n = Int(readLine()!)!
var result: [String] = []


for _ in 0..<n {
    var arr: [Int] = Array(repeating: 0, count: 26)
    let str = Array(readLine()!)
    var check: Bool = false

    for i in 0..<str.count {

        let ch = String(str[i]).unicodeScalars
        let index = Int(ch[ch.startIndex].value)-65
        arr[index] += 1

        if check == true {
            if str[i] == str[i-1] {
                arr[index] = 0
                check = false
            } else {
                break
            }
        }

        if arr[index] == 3 {
            check = true
        }
    }

    let appendWord: String = check ? "FAKE" : "OK"
    result.append(appendWord)

}

for item in result {
    print(item)
}
