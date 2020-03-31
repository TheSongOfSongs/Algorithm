let num1 = readLine()!
let op = readLine()!
let num2 = readLine()!

var result = ""

if op == "*" {
    result = num1
    result.append(contentsOf: num2.dropFirst())
} else {
    if num1.count == num2.count {
        result = String(num1.dropFirst())
        result.insert("2", at: result.startIndex)
    } else {
        if num1.count > num2.count {
            result = String(num1.dropLast(num2.count))
            result.append(num2)
        } else {
            result = String(num2.dropLast(num1.count))
            result.append(num1)
        }
    }
}

print(result)
