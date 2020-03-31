let a = Int(readLine()!)!
let b = readLine()!

for i in 0..<3 {
    let num = b[b.index(b.startIndex, offsetBy: 2-i)]
    print(a * Int(String(num))!)
}
print(a * Int(b)!)
