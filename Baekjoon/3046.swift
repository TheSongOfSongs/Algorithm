let inputs = readLine()
var input = inputs!.components(separatedBy: " ").map{Int($0)!}

print(input[1]*2-input[0])
