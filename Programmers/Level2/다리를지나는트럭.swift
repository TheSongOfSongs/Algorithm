import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge: [Int] = []
    var sec: Int = 0
    var trucks = truck_weights
    var secFortruckOnBridge = 0
    var sumOfBridge = 0
    
    while trucks.count > 0 {
        
        sec += 1
        
        bridge.insert(0, at: 0)
        if bridge.count > bridge_length {
            sumOfBridge -= bridge.last!
            bridge.removeLast()
        }

        if bridge.first == 0 && sumOfBridge + trucks.last! <= weight {
            bridge[0] = trucks.last!
            sumOfBridge += bridge[0]
            trucks.removeLast()
        }
    }
    
    for i in 0..<bridge.count where bridge[i] != 0 {
            secFortruckOnBridge = bridge_length-i
            break
    }
    
    
    return sec + secFortruckOnBridge
}
