let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map {Int($0)!}
var result = 0

if n == 2 {
    result = gcd(input[0], input[1])
} else {
    result = gcd(gcd(input[0], input[1]), input[2])
}


func gcd(_ a: Int, _ b: Int) -> Int {
    var n1 = max(a, b)
    var n2 = min(a, b)

    while true {
        let rest = n1%n2
        if rest == 0 {
            break
        }
        n1 = n2
        n2 = rest
    }

    return n2
}

for i in 1...result {
    if result%i == 0 { print(i) }
}
