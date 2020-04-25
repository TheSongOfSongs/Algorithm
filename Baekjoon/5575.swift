var result: [String] = []

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map({Int($0)!})
    let h1 = input[0]
    let m1 = input[1]
    let s1 = input[2]

    let h2 = input[3]
    let m2 = input[4]
    let s2 = input[5]

    var h3: Int = h2 - h1
    var m3: Int = m2 - m1
    var s3: Int = s2 - s1

    if s3 < 0 {
        s3 += 60
        m3 -= 1
    }

    if m3 < 0 {
        m3 += 60
        h3 -= 1
    }

    let str: String = "\(h3) \(m3) \(s3)"
    result.append(str)
}

for item in result {
    print(item)
}
