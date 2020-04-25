var set: Set<[Int]> = []

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let x = input[0]
    let y = input[1]

    for i in x..<x+10 {
        for j in y..<y+10 {
            set.insert([i, j])
        }
    }
}

print(set.count)
