// input 받기
let input = Int(readLine()!)!
var tempInput = input

// 최대 5의 개수 구하기
var maxFive = 0
while true {
    if tempInput == 0 {
        break
    } else if tempInput < 0 {
        tempInput += 5
        maxFive -= 1
        break
    } else {
        tempInput -= 5
        maxFive += 1
    }
}

// 5의 개수에서 거꾸로 가면 3의 개수 구하기
var stop = false
for i in stride(from: maxFive, through: 0, by: -1) {
    tempInput = input - 5*i
    var maxThree = 0
    while true {
        if tempInput == 0 {
            print(maxThree + i)
            stop = true
            break
        } else if tempInput < 0 {
            break
        } else {
            tempInput -= 3
            maxThree += 1
        }
    }
    if stop == true {
        break
    }
}
if tempInput < 0 {
    print(-1)
}
