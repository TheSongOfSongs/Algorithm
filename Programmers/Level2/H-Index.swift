import Foundation

func solution(_ citations:[Int]) -> Int {
    let numOfitations = citations.count
    var hIndex: Int = 0

    for i in 1...numOfitations {
        let result = citations.filter({$0 >= i}).count
        if result == i {
            hIndex = i
            break
        } else if result > i {
            hIndex = i
        } else {
            break
        }
    }


    return hIndex
}
