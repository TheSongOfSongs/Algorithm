let size = readLine()!.split(separator: " ").map({Int($0)!})
var original: [[Int]] = []
var transformed: [[Int]] = []
var result = 0

func checkPossibleCheck() {
    if original == transformed {
        print(result)
    } else {
        print(-1)
    }
}

for _ in 0..<size[0] {
    let str = readLine()!
    original.append(Array(str).map({Int(String($0))!}))
}

for _ in 0..<size[0] {
    let str = readLine()!
    transformed.append(Array(str).map({Int(String($0))!}))
}

if size[0] < 3 || size[1] < 3 {
    checkPossibleCheck()
} else {
    for i in 0..<size[0] - 2 {
        for j in 0..<size[1] - 2 {
            if original[i][j] != transformed[i][j] {

                for k in i..<i+3 {
                    for m in j..<j+3 {
                        original[k][m] = original[k][m] == 0 ? 1 : 0
                    }
                }

                result += 1
            }
        }
    }

    checkPossibleCheck()

}
