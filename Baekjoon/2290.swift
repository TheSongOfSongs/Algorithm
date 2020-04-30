// 길이 입력 받기, 숫자입력받기
let input = readLine()!.split(separator: " ")
let length = Int(input[0])!
let num = Array(input[1])
let figureLength = length*2+3
var result: [String] = Array(repeating: "", count: figureLength)

var noneStr = ""
for _ in 0..<length+2 { noneStr.append(" ") }

var flatStr = " "
for _ in 0..<length { flatStr.append("-") }
flatStr.append(" ")

var bothStr = "|"
for _ in 0..<length { bothStr.append(" ")}
bothStr.append("|")

var leftStr = "|"
for _ in 0..<length+1 { leftStr.append(" ")}

var rightStr = ""
for _ in 0..<length+1 { rightStr.append(" ")}
rightStr.append("|")



enum draw: String, CaseIterable {
    case none
    case flat
    case left
    case right
    case both

    var string: String {
        switch self {
        case .none:
            return noneStr
        case .flat:
            return flatStr
        case .left:
            return leftStr
        case .both:
            return bothStr
        default:
            return rightStr
        }
    }
}

// 케이스별로 행이 1-7, 2-3, 4, 5-6
let one: [draw] = [.flat, .none, .flat, .flat, .none, .flat, .flat, .flat, .flat, .flat]
let twoThree: [draw] = [.both, .right, .right, .right, .both, .left, .left, .right, .both, .both ]
let four: [draw] = [.none, .none, .flat, .flat, .flat, .flat, .flat, .none, .flat, .flat]
let fiveSix: [draw] = [.both, .right, .left, .right, .right, .right, .both, .right, .both, .right]
let seven: [draw] = [.flat, .none, .flat, .flat, .none, .flat, .flat, .none, .flat, .flat]



// 반복문으로 출력하기
for i in 0..<num.count {
    let figure = Int(String(num[i]))!
    result[0].append("\(one[figure].string) ")

    for j in 1..<length+1 {
        result[j].append("\(twoThree[figure].string) ")
    }

    result[length+1].append("\(four[figure].string) ")

    for j in length+2..<2*length+2 {
        result[j].append("\(fiveSix[figure].string) ")
    }

    result[2*length+2].append("\(seven[figure].string) ")

}

for item in result {
    print(item)
}
