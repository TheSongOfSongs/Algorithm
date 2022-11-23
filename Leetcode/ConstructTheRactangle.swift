class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var rootN = Int(Float(area).squareRoot())
        
        while true {
            if area % rootN == 0 {
                return [area/rootN, rootN]
            } else {
                rootN -= 1
            }
        }
    }
}
