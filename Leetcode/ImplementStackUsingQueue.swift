
class MyStack {
    
    var stack: [Int] = []

    init() { }
    
    func push(_ x: Int) {
        stack.append(x)
    }
    
    func pop() -> Int {
        return stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func empty() -> Bool {
        return stack.isEmpty
    }
}

