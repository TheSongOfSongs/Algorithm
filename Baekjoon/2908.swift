var num = readLine()!.split(separator: " ")

var n1 = Int(String(num[0].reversed()))!
var n2 = Int(String(num[1].reversed()))!

if n1 > n2 {
    print(n1)
} else {
    print(n2)
}
