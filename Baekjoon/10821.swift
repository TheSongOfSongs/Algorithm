var input: String = readLine()!

input = input.filter({$0 == ","})
print(input.count + 1)
