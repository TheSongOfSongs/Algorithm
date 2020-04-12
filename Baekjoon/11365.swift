var result: [String] = []

while true {
    let str = readLine()!
    if str == "END" {
        break
    }
    result.append(String(str.reversed()))
}

for item in result {
    print(item)
}
