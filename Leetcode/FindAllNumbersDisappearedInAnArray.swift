class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let setNum = Set(nums)
        let compared = Set(1...nums.count)
        return Array(compared.subtracting(setNum)).sorted()
    }
}
