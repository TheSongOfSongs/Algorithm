let str = readLine()!
var result = 0

for ch in str {
    switch ch {
    case "a":
        result += 1
    case "e":
        result += 1
    case "i":
        result += 1
    case "o":
        result += 1
    case "u":
        result += 1
    default:
        continue
    }
}

print(result)
