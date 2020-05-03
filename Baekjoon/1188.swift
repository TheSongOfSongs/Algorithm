let input = readLine()!.split(separator: " ").map({Int($0)!})
let each = input[0]
let people = input[1]
let piece = people

var left: Int = 0
var filled: Int = 0
var cut: Int = 0

while filled < people {
    while left >= each {
        if left > each {
            cut += 1
        }
        left -= each
        filled += 1
    }

    if !(filled < people) { break }

    if each < piece {
        cut += 1
        filled += 1
        left += piece - each
    } else {
        left += piece
    }
}

print(cut)
