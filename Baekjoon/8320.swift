let n = Int(readLine()!)!
var stop = false
var sum = 0

for i in 1...n {
    for j in i...n {
        if i*j > n {
            stop = false
            break
        }
        sum += 1
    }
}

print(sum)
