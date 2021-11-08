import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let diff = Y - X
    return diff/D + (diff%D > 0 ? 1 : 0)
}
