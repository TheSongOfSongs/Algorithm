let input = readLine()!.split(separator: " ").map({Int($0)!})

var hr = input[0]
var min = input[1]

if min < 45 {
    hr -= 1
    min += 60
}

min -= 45

if hr < 0 {
    hr = 23
}

print(hr, min)
