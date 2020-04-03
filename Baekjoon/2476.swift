let input = Int(readLine()!)!
var max = 0

for _ in 0..<input {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    var dic: [Int:Int] = [:]
    var result = 0

    for num in arr {
        if dic[num] == nil {
            dic[num] = 1
        } else {
            dic[num]! += 1
        }
    }

    for (key, value) in dic {
        if value == 1 {
            let current = key * 100
            result = result > current ? result : current
        } else if value == 2 {
            result = 1000 + key * 100
            break
        } else if value == 3 {
            result = 10000 + key * 1000
            break
        }
    }

    if result > max { max = result }
}

print(max)
