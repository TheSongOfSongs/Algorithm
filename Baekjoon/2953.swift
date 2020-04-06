var arr: [Int] = []

for _ in 0..<5 {
    let inputs = readLine()!.split(separator: " ").map({Int($0)!})
    arr.append(inputs.reduce(0, +))
}

let score = arr.max()
let winner = arr.firstIndex(of: score!)

print(winner! + 1, score!)
