let input = readLine()!.split(separator: " ").map {Int($0)!}
var setA: [String: Int] = [:]
var result: [String] = []

for _ in 0..<input[0] {
    setA[readLine()!] = 0
}

for _ in 0..<input[1] {
    let str = readLine()!
    if setA[str] != nil {
        setA[str]! += 1
    }
}
setA = setA.filter { $0.value == 1 }

print(setA.count)
for item in setA.sorted(by: {$0.0 < $1.0}) {
    print(item.key)
}
