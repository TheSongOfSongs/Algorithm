let input = Int(readLine()!)!
var result = 0
let endIndex = String(input).count

if endIndex != 1 {
    for i in 1...endIndex {
        var start = 1
        var end = 9

        if i != 1 {
            for _ in 1...i-1 {
                start *= 10
                end = i == endIndex ? input : end*10 + 9
            }
        }

        result += (end - start + 1)*i
    }
} else {
    result = input
}


print(result)
