// 단어 받기
let input = readLine()!
let num = input.count


// 결과 라인 정리할 배열 생성
var result: [String] = []


// 함수 세 개 이용해 결과 만들기
func firstLast() -> String {
    var str: String = ""

    for i in 1...num {
        if i%3 == 0 {
            str.append("...*")
        } else {
            str.append("...#")
        }
    }
    str.append("..")
    str.removeFirst()
    return str
}

func second() -> String {
    var str: String = ""

    for i in 1...num {
        if i%3 == 0 {
            str.append(".*.*")
        } else {
            str.append(".#.#")
        }
    }
    str.append(".")

    return str
}

func middle() -> String {
    var str: String = ""
    for i in 1...num {
        let ch = input[input.index(input.startIndex, offsetBy: i-1)]
        if i%3 == 0 || ((i-1)%3 == 0 && i>1) {
            str.append("*.\(ch).")
        } else {
            str.append("#.\(ch).")
        }
    }
    if num%3 == 0 {
        str.append("*")
    } else {
        str.append("#")
    }

    return str
}

result.append(firstLast())
result.append(second())
result.append(middle())
result.append(second())
result.append(firstLast())

for item in result {
    print(item)
}
