var result: [Int] = []

while true {
    let start = Int(readLine()!)!
    if start == 0 { break }
    let end = start * 2

    var arr = Array(repeating: true, count: end+1)

    for i in 2...end {
        if arr[i] == true {

            for j in 2...end {
                if i*j > end {
                    break
                }
                arr[i*j] = false
            }
        }
    }
    result.append(arr[start+1...end].filter({$0 == true}).count)
}

for item in result {
    print(item)
}
