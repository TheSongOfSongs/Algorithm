var num = 1000 - Int(readLine()!)!
var result = 0
var arr: [Int] = []

func check(num: Int, result: Int, check: Int) -> [Int] {
    var num = num
    var result = result

    if num != 0 {
        while num >= check {
            num -= check
            result += 1
        }
    }
    return [num, result]
}

arr = check(num: num, result: result, check: 500)
arr = check(num: arr[0], result: arr[1], check: 100)
arr = check(num: arr[0], result: arr[1], check: 50)
arr = check(num: arr[0], result: arr[1], check: 10)
arr = check(num: arr[0], result: arr[1], check: 5)
arr = check(num: arr[0], result: arr[1], check: 1)

print(arr[1])
