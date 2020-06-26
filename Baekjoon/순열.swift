var arr: [Character] = ["A", "B", "C", "D"]
var length: Int = arr.count

/// 1. Recursion
func recursion(depth: Int) {
    if depth == length {
        print(arr)
    } else {
        for i in depth..<length {
            arr.swapAt(depth, i)
            recursion(depth: depth+1)
            arr.swapAt(depth, i)
        }
    }
}


/// 2. Heap's  Algorithm
func heap(size: Int) {
    if size == 1 {
        print(arr)
    } else {
        for i in 0..<size {
            heap(size: size-1)

            if i < size-1 {
                if size%2 == 0{  arr.swapAt(i, size-1) }
                else { arr.swapAt(0, size-1) }
            }
        }
    }
}


/// 3. nPr
func permutation(arr: Array<Int>, startIndex: Int) {
    var arr = arr
    let length = arr.count
    if startIndex == length - 1 {
        print(arr)
        return
    }

    for i in startIndex..<length-1 {
        arr.swapAt(startIndex, i)
        permutation(arr: arr, startIndex: startIndex + 1)
        arr.swapAt(startIndex, i)
    }
}
