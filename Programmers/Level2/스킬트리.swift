import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result = skill_trees.count
    
    for j in 0..<skill_trees.count {
        var temp = ""
        for ch in skill_trees[j] where skill.contains(ch) {
            temp.append(ch)
        }
           
        for i in 0..<temp.count where skill[skill.index(skill.startIndex, offsetBy: i)] != temp[temp.index(temp.startIndex, offsetBy: i)] {
            result -= 1
            break
        }
    }
    return result
}
