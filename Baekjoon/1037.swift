let _ = readLine()!
let input = readLine()!.split(separator: " ").map({Int($0)!}).sorted()
print(input.first! * input.last!)
