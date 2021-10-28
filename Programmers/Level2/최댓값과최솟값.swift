func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").compactMap({ Int($0) })
    let min = arr.min()!
    let max = arr.max()!

    return "\(min) \(max)"
}
