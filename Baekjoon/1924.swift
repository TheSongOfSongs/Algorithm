// input 받기
let input = readLine()!.split(separator: " ").map({Int($0)!})
let month = input[0]
let day = input[1]

// 날짜를 일수로 변경하기
var dateToday = { () -> Int in
    if month != 1 {
        var result = 0
        for i in 1..<month {
            switch i {
            case 1:
                result += 31
            case 2:
                result += 28
            case 3:
                result += 31
            case 4:
                result += 30
            case 5:
                result += 31
            case 6:
                result += 30
            case 7:
                result += 31
            case 8:
                result += 31
            case 9:
                result += 30
            case 10:
                result += 31
            case 11:
                result += 30
            case 12:
                result += 31
            default:
                continue
            }
        }
        return result + day
    } else {
        return day
    }
}


// 일수 % 7 로 요일 구하기
switch dateToday()%7 {
case 1:
    print("MON")
case 2:
    print("TUE")
case 3:
    print("WED")
case 4:
    print("THU")
case 5:
    print("FRI")
case 6:
    print("SAT")
default:
    print("SUN")
}
