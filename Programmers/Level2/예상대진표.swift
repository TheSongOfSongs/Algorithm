func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var result = 0
    var a = a
    var b = b
    
    while a != b {
        a = (a+1)/2
        b = (b+1)/2
        
        result += 1
    }
    
    return result
}
