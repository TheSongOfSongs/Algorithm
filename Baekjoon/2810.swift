let num = Int(readLine()!)!
let input = readLine()!
var arr: [String] = []

arr.append("*")
for item in input {

    if item == "S" {
        arr.append(contentsOf: ["S", "*"])
    } else {
        if arr.last! == "L" { arr.append(contentsOf: ["L", "*"]) }
        else { arr.append("L") }
    }
}

var i = 0
while true {
    if arr.filter({$0 == "*"}).count == 0 || arr.filter({$0 == "S" || $0 == "L"}).count == 0{
        break
    }
    if arr[i] == "*" {
        if i-1 >= 0 {
            arr.remove(at: i)
            arr.remove(at: i-1)
        } else {
            arr.remove(at: i+1)
            arr.remove(at: i)
        }
    } else {
        i += 1
    }
}

print(num-arr.filter({$0 == "S" || $0 == "L"}).count)
