let arr = readLine()!.split(separator: " ").map({ Int($0)! })
let arr2 = Int(readLine()!)!
var hour = arr[0]
var min = arr[1] + arr2

hour += min/60
min = min%60

if hour >= 24 {
    hour -= 24
}

print(hour,min)
