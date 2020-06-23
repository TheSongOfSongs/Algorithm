let input1 = readLine()!.split(separator: " ").map {Int($0)!}
let depth = input1[0]
let doughNum = input1[1]

var circle = readLine()!.split(separator: " ").map{Int($0)!}
let doughCircle = readLine()!.split(separator: " ").map{Int($0)!}

var base = circle.first!

for i in 0..<circle.count {
    if circle[i] > base {
        circle[i] = base
    } else {
        base = circle[i]
    }
}

var stop = false

for dough in doughCircle {
    while true {
        if let popCircle = circle.popLast() {
            if popCircle >= dough {
                break
            }
        } else {
            stop = true
            break
        }
    }

    if stop {
        break
    }
}

if stop == true {
    print(0)
} else {
    print(circle.endIndex+1)
}
