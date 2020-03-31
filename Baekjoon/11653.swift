var num = Int(readLine()!)!
var operand = 2
repeat {
    if num%operand == 0 {
        print(operand)
        num/=operand
    } else {
        operand += 1
    }
} while num != 1
