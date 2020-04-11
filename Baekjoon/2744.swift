let input: String = readLine()!
var output: String = ""

for ch in input {
    if ch.isLowercase {
        output.append(ch.uppercased())
    }
    if ch.isUppercase {
        output.append(ch.lowercased())
    }
}

print(output)
