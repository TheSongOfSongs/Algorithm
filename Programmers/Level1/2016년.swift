import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    let howManyDate: Array<Int> = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var monthToDate = b-1
    for i in 0..<a-1 {
        monthToDate += howManyDate[i]
    }
    
    switch monthToDate % 7 {
    case 0:
        return "FRI"
    case 1:
        return "SAT"
    case 2:
        return "SUN"
    case 3:
        return "MON"
    case 4:
        return "TUE"
    case 5:
        return "WED"
    case 6:
        return "THU"
    default:
        return ""
    }
}
