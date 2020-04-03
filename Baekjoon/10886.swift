let input = Int(readLine()!)!
var notCute = 0
var cute = 0

for _ in 0..<input {
    let num = Int(readLine()!)!
    if num == 0 {
        notCute += 1
    } else {
        cute += 1
    }
}

if notCute > cute {
    print("Junhee is not cute!")
} else {
    print("Junhee is cute!")
}
