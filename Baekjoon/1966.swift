import Foundation

// 입력받기
let count = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<count {
    let info = readLine()!.split(separator: " ").map({Int($0)!})
    let arr = readLine()!.split(separator: " ").map({Int($0)!})

    result.append(check(info[1], arr))
}


func check(_ loca: Int, _ arr: [Int]) -> Int {
    var result = 0

    let target = arr[loca]

    var arr = arr
    arr[loca] = -1

    while !arr.isEmpty {
        if arr.max() == arr.first && arr.max()! >= target {
            arr.removeFirst()
            result += 1
            continue
        }

        if arr.first == -1 {
            if arr.max()! <= target {
                result += 1
                break
            }
        }

        arr.append(arr.first!)
        arr.removeFirst()
    }


    return result
}


for item in result {
    print(item)
}
