var student: [Int] = []

let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let M = input[1]
var result = 0

for _ in 1...N {
    student.append(Int(readLine()!)!)
}

for i in 1...M {
    for item in student {
        if i%item == 0 {
            result += 1
            break
        }
    }
}

print(result)
