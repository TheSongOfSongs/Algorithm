func solution(_ number:String, _ k:Int) -> String {
    var stack: [Character] = []
    var k = k
    
    for ch in number {
        while true {
            if !stack.isEmpty,
               k > 0,
               let last = stack.last,
               last < ch {
                stack.removeLast()
                k -= 1
            } else {
                break
            }
        }
        
        stack.append(ch)
    }
    
    return String(stack[0..<(stack.count - k)])
}
