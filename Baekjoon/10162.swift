var num: Int = Int(readLine()!)!
var result = 0
var n10 = 0
var n5 = 0
var n1 = 0


while true {
    result += 300
    n10 += 1
    if result > num {
        result -= 300
        n10 -= 1
        break
    }
}

while true {
    result += 60
    n5 += 1
    if result > num {
        result -= 60
        n5 -= 1
        break
    }
}

while true {
    result += 10
    n1 += 1
    if result > num {
        result -= 10
        n1 -= 1
        break
    }
}

if result == num {
    print (n10, n5, n1)
} else {
    print(-1)
}
