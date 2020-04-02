let input = CLongLong(readLine()!)!
var result: CLongLong = 0
var i: CLongLong = 1

while true {
    result += i
    if result > input {
        print(Int(i-1))
        break
    }
    i += 1
}
