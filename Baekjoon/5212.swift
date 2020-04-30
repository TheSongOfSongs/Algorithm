// 숫자 입력 받기
let input = readLine()!.split(separator: " ").map({Int($0)!})
let row = input[0]
let col = input[1]
let ocean: Character = "."

// 지도 입력받고 이차원 배열에 저장
var map: [[Character]] = []
for _ in 0..<row {
    map.append(Array(readLine()!))
}

// 바뀐 건지 확인
var tracing: [[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)

// for문 돌면서 바다화 시키기
for i in 0..<row {
    for j in 0..<col {
        if i == 0 {
            tracing[i][j] += 1
        }

        if i == row-1 {
            tracing[i][j] += 1
        }


        if j == 0 {
            tracing[i][j] += 1
        }

        if j == col-1 {
            tracing[i][j] += 1
        }

        if map[i][j] == ocean {

            if i-1 >= 0 {
                tracing[i-1][j] += 1
            }

            if i+1 < row {
                tracing[i+1][j] += 1
            }

            if j-1 >= 0 {
                tracing[i][j-1] += 1
            }

            if j+1 < col {
                tracing[i][j+1] += 1
            }
        }
    }
}
for i in 0..<row {
    for j in 0..<col {
        if tracing[i][j] >= 3 {
            map[i][j] = "."
        }
    }
}

// 첫째줄 행
while true {
    if map.first?.filter({ $0 == "X" }).count == 0 {
        map.removeFirst()
    } else {
        break
    }
}

// 마지막줄 행
while true {
    if map.last?.filter({ $0 == "X" }).count == 0 {
        map.removeLast()
    } else {
        break
    }
}

// 첫째줄 열
while true {
    var count: Int = 0
    for i in 0..<map.count {
        if map[i][0] == "X" {
            count += 1
        }
    }

    if count > 0 {
        break
    } else {
        for i in 0..<map.count {
            map[i].removeFirst()
        }
    }

    if map.count == 0 {
        break
    }
}


// 마지막줄 열
while true {
    var count: Int = 0

    for i in 0..<map.count {
        if map[i][map[0].count-1] == "X" {
            count += 1
        }
    }

    if count > 0 {
        break
    } else {
        for i in 0..<map.count {
            map[i].removeLast()
        }
    }

    if map.count == 0 {
        break
    }
}

var found = false
for item in map {
    let str = String(item)
    print(str)
    if str.count > 0 {
        found = true
    }
}

if found == false {
    print(".")
}
