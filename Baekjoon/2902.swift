let arr = readLine()!.split(separator: "-")
var result = ""
for item in arr {
    result.append(item.first!)
}
print(result)
