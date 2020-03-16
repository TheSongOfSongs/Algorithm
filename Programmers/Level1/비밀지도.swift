import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer = Array(repeating: "", count: n)

    let map1 = getMap(n, arr1)
    let map2 = getMap(n, arr2)
    
    var map3 = Array(repeating: Array(repeating: "", count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            map3[i][j] = map1[i][j] == "#" || map2[i][j] == "#" ? "#" : " "
        }
    }
    
    for i in 0..<n { answer[i] = map3[i].joined() }
    
    return answer
}

func getMap(_ n: Int, _ arr: [Int]) -> [[String]] {
    var tempString: String = ""
    let tempStringIndex = tempString.startIndex
    
    var map = Array(repeating: Array(repeating: "", count: n), count: n)
    for i in 0..<arr.count {
        tempString = getBinary(arr[i], n)
        for j in 0..<n { map[i][j] = String(tempString[tempString.index(tempStringIndex, offsetBy: j)]) }
    }
    return map
}

func getBinary(_ num: Int, _ sideLen: Int) -> String {
    var str = String(num, radix: 2)
    for _ in 0..<sideLen-str.count { str.insert(" ", at: str.startIndex) }
    str = str.replacingOccurrences(of: "1", with: "#")
    str = str.replacingOccurrences(of: "0", with: " ")
    
    return str
}
