var arr: [String] = []

while true {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    if input.first! == 0 {
        break
    }

    input.sort(by: >)
    if input[0]*input[0] == input[1]*input[1] + input[2]*input[2] {
        arr.append("right")
    } else {
        arr.append("wrong")
    }
}

for item in arr {
    print(item)
}
