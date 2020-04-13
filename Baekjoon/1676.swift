let input = Int(readLine()!)!

var nFive = 0
for i in 0..<input {
    var num = input-i

    while true {
        if num%5 == 0{
            num /= 5
            nFive += 1
        } else {
            break
        }
    }
}

print(nFive)
