let input = readLine()!
var result = 0
var pre_ch: Character = "*"
for ch in input {
    switch ch {
    case pre_ch:
        result += 5
    default:
        result += 10
    }
    pre_ch = ch
}

print(result)
