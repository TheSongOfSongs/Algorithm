let input = readLine()!.split(separator: " ").map({Int($0)!})
let R = input[0]
let C = input[1]
var arr: [String] = []
var result: [String] = []

for _ in 0..<R {
    arr.append(readLine()!)
}

let error = readLine()!.split(separator: " ").map({Int($0)!-1})
var tempStr: String = ""
var smallIndex = 1

for i in 0..<2*R {
    if i < R {
        tempStr = arr[i]
        var str = tempStr
        for j in 0..<C {
            str.append(tempStr[tempStr.index(tempStr.endIndex, offsetBy: -j-1)])
        }
        result.append(str)
    } else {
        tempStr = result[R-smallIndex]
        smallIndex += 1
        result.append(tempStr)
    }
}

var chReplacement = "."
if result[error[0]][result[error[0]].index(result[error[0]].startIndex, offsetBy: error[1])] == "." {
    chReplacement = "#"
}

result[error[0]].insert(contentsOf: chReplacement, at: result[error[0]].index(result[error[0]].startIndex, offsetBy: error[1]))
result[error[0]].remove(at: result[error[0]].index(result[error[0]].startIndex, offsetBy: error[1]+1))

for item in result {
    print(item)
}
