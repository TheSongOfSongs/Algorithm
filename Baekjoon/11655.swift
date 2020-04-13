let input = readLine()!
var output = ""
for ch in input {
    if ch.isLetter {
        var temp = UnicodeScalar(String(ch))!.value + UInt32(13)
        if ch.isLowercase && temp > 122  {
            temp = temp - 122 + 96
        }
        if ch.isUppercase && temp > 90 {
            temp = temp - 90 + 64
        }
        let temp2 = UnicodeScalar(temp)!
        output.append(String(temp2))
    } else {
        output.append(String(ch))
    }
}

print(output)
