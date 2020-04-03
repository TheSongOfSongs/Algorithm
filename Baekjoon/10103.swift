var num: Int = Int(readLine()!)!
var aScore = 100
var bScore = 100

for _ in 0..<num {
    let arr = readLine()!.split(separator: " ").map({Int($0)!})
    if arr[0] > arr[1] {
        bScore -= arr[0]
    } else if arr[1] > arr[0] {
        aScore -= arr[1]
    }
}

print("\(aScore)\n\(bScore)")
