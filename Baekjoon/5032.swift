let input = readLine()!.split(separator: " ").map({Int($0)!})

let e = input[0]
let f = input[1]
let c = input[2]

var bottle = e + f
var result = 0
var newBottle = 0

while true {
    if bottle >= c {
        newBottle = bottle/c
        result += newBottle
        bottle = newBottle + bottle%c
    } else {
        break
    }
}

print(result)
