let photo = Int(readLine()!)!
let _ = readLine()!
let arr = readLine()!.split(separator: " ").map({Int($0)!})

struct president {
    var id: Int
    var support: Int
}

var presidentList: [president] = []

for item in arr {
    if let index = presidentList.firstIndex(where: {$0.id == item}) {
        presidentList[index].support += 1
    } else {
        if presidentList.count >= photo {
            let minSupport = presidentList.min { old, new in
                old.support < new.support
            }

            let indexRemoved = presidentList.firstIndex(where: {$0.support == minSupport?.support})
            presidentList.remove(at: indexRemoved!)
        }
        presidentList.append(president(id: item, support: 1))
    }
}

presidentList.sort(by: { old, new in
    old.id < new.id
})

var result = ""

for item in presidentList {
    result += "\(item.id) "
}

result.removeLast()

print(result)
