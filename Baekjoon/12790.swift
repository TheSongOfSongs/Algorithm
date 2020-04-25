var arr: [Int] = []

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    var HP = input[0] + input[4]
    if HP < 1 { HP = 1 }
    var MP = input[1] + input[5]
    if MP < 1 { MP = 1 }
    var offense = input[2] + input[6]
    if offense < 0 { offense = 0}
    let defense = input[3] + input[7]

    let result = 1*HP + 5*MP + 2*offense + 2*defense
    arr.append(result)
}

for item in arr {
    print(item)
}
