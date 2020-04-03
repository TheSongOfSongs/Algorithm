let input = readLine()!
let inputs = readLine()!
var chA: Int = 0
var chB: Int = 0

for ch in inputs {
    if ch == "A" {
        chA += 1
    } else {
        chB += 1
    }
}

if chA > chB {
    print("A")
} else if chA == chB {
   print("Tie")
} else {
    print("B")
}
