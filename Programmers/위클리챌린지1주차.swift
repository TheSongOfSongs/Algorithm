import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
  let total = (count + 1) * count/2 * price
  return total > money ? Int64(total - money) : 0
}
