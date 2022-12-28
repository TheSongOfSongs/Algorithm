import Foundation

// a: 마트에 주는 병 개수
// b: a개 줄 때 받는 콜라 개수
// n: 현재 갖고 있는 빈병 개수
func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0
    var keeping = 0
    var n = n
    
    while n >= a {
        keeping = n%a
        n -= keeping
        n = n/a * b
        result += n
        n += keeping
    }
    
    return result
}
