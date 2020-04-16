let num = readLine()!
let arr = readLine()!.split(separator: " ")
print(arr.filter({ (car) -> Bool in
    car == num
    }).count)
