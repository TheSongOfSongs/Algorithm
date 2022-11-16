class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        let arr = Set(nums).sorted(by: >)
        return arr.count < 3 ? arr.first! : arr[2]
    }
}
