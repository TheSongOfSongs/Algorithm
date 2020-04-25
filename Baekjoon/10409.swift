let input = readLine()!.split(separator: " ").map{Int($0)!}
let minutes = input[1]
let task = readLine()!.split(separator: " ").map{Int($0)!}
var sum = 0
var result = 0
var found = false
for item in task {
    sum += item
    if sum > minutes {
        print(result)
        found = true
        break
    }
    result += 1
}

if found == false { print(task.count) }
