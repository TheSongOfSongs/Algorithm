var arr: [Int] = []
while true {
    let num: Int = Int(readLine()!)!
    if num == -1 {
        break
    }
    arr.append(num)
}

for num in arr {
    var string = "\(num) = "
    let number = num
    var sum = 0
    for i in 1..<number {
        if number%i == 0 {
            string.append("\(i) + ")
            sum += i
        }
    }
    string.removeLast()
    string.removeLast()
    if sum == num {
        print(string)
    } else {
        print("\(num) is NOT perfect.")
    }


}
