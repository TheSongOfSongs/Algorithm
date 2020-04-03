var num: Int = Int(readLine()!)!
var result : [String] = []

for _ in 0..<num {
    var Yonsei = 0
    var Korea = 0
    for _ in 0..<9 {
        let arr = readLine()!.split(separator: " ").map({Int($0)!})
        if arr[0] > arr[1] {
            Yonsei += 1
        } else if arr[1] > arr[0] {
            Korea += 1
        }
    }

    if Yonsei > Korea {
        result.append("Yonsei")
    } else if Yonsei < Korea {
        result.append("Korea")
    } else {
        result.append("Draw")
    }
}

for item in result {
    print(item)
}
