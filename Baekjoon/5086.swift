var result: [String] = []

while true {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    if arr[0] == 0 && arr[1] == 0 {
        break
    }

    if arr[0]%arr[1] == 0 {
        result.append("multiple")
    } else if arr[1]%arr[0] == 0 {
        result.append("factor")
    } else {
        result.append("neither")
    }
}

for item in result {
    print(item)
}
