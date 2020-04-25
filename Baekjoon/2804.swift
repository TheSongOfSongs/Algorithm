let input = readLine()!.split(separator: " ")

let str1 = input[0]
let str2 = input[1]

var str1Index: Int = 0
var str2Index: Int = 0

var found = false
for i in 0..<str1.count{
    for j in 0..<str2.count{
        if str1[str1.index(str1.startIndex, offsetBy: i)] == str2[str2.index(str2.startIndex, offsetBy: j)] {
            str1Index = i
            str2Index = j
            found = true
            break
        }
    }
    if found == true {
        break
    }
}

for i in 0..<str2.count {
    if i == str2Index {
        print(str1)
    } else {
        var str = ""
        for j in 0..<str1.count {
            if j == str1Index {
                str.append("\(str2[str2.index(str2.startIndex, offsetBy: i)])")
            } else {
                str.append(".")
            }
        }
        print(str)
    }
}
