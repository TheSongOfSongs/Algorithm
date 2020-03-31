let input = readLine()!.split(separator: " ").map{ Int($0)! }

let max = input.max()!
let min = input.min()!

print((max-1) + max*(min-1))
