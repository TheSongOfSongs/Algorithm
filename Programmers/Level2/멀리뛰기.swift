func solution(_ n:Int) -> Int {
    
    if n <= 2 {
        return n
    }
    
    var dp = Array(repeating: -1, count: n+1)
    
    dp[1] = 1
    dp[2] = 2
    
    for i in 3...n {
        // n-1번째에서 1을 추가하고, n-2번째에서 2를 추가하면
        // n번째 방법
        // overflow 발생할 수 있으므로 dp에 값 할당할 때 나누기 실행
        dp[i] = (dp[i-1] + dp[i-2])%1234567
    }
    
    return dp[n]
}
