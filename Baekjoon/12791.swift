let n = Int(readLine()!)!
var years: [[Int]] = []

let str = "1967 DavidBowie\n1969 SpaceOddity\n1970 TheManWhoSoldTheWorld\n1971 HunkyDory\n1972 TheRiseAndFallOfZiggyStardustAndTheSpidersFromMars\n1973 AladdinSane\n1973 PinUps\n1974 DiamondDogs\n1975 YoungAmericans\n1976 StationToStation\n1977 Low\n1977 Heroes\n1979 Lodger\n1980 ScaryMonstersAndSuperCreeps\n1983 LetsDance\n1984 Tonight\n1987 NeverLetMeDown\n1993 BlackTieWhiteNoise\n1995 1.Outside\n1997 Earthling\n1999 Hours\n2002 Heathen\n2003 Reality\n2013 TheNextDay\n2016 BlackStar"

let albums = str.split(separator: "\n").map{String($0)}

for _ in 0..<n {
    let year = readLine()!.split(separator: " ").map{Int($0)!}
    years.append(year)
}


for i in 0..<years.count {
    var result: [String] = []
    for item in albums {
        let temp = Int(item.split(separator: " ").first!)!
        if temp >= years[i][0] && temp <= years[i][1] {
            result.append(item)
        }
    }
    print(result.count)
    for item in result {
        print(item)
    }
}
