func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    // 받은 문자열 반복문

    for ch in s {
        if ch == " " {
            result += " "
        } else {
            var valuePushed = UnicodeScalar(String(ch))!.value + UInt32(n)

            if ch.isUppercase {
                if valuePushed > 90 {
                    valuePushed -= 26
                }
            } else {
                if valuePushed > 122 {
                    valuePushed -= 26
                }
            }
            result += "\(UnicodeScalar(valuePushed)!)"
        }
    }

    return result
}
