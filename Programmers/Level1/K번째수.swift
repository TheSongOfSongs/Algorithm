import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    let commandsCount: Int = commands.count
    
    for i in 1...commandsCount {
        var tempArr: [Int] = []
        
        for j in commands[i-1][0]...commands[i-1][1]{
            tempArr.append(array[j-1])
        }
        tempArr = tempArr.sorted()
        result.append(tempArr[commands[i-1][2]-1])
    }
    
    return result
}

