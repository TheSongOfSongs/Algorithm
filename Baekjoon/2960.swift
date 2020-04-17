// N 입력
let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let K = input[1]
public var tempK = 0
var stop = false

// 2부터 N까지 arr 입력
public var arr: [Int] = []
for i in 2...N {
    arr.append(i)
}

func check(index: Int) -> Bool {
    tempK += 1
    if tempK == K {
        print(arr[index])
        return true
    }
    arr.remove(at: index)
    return false
}

// 배열의 처음-base 에 자신 지우기, 지울 때마다 K번째 체크
while stop == false {
    let base = arr[0]
    if check(index: 0) { break }

    // 반복문 돌면서 자신의 배수-multiples 지우기, 지울 때마다 K번째 체크
    var j = 0
    while true {
        if arr[j]%base == 0 {
            if check(index: j) {
                stop = true
                break
            }
        } else {
            j += 1
        }

        if j == arr.count {
            break
        }
    }
}
