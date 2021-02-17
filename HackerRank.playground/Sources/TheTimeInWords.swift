// https://www.hackerrank.com/challenges/the-time-in-words/problem

import Foundation

public func timeInWords(h: Int, m: Int) -> String {
    if m == 0 {
        return getNumberDescription(n: h) + " o' clock"
    } else if m == 30 {
        return "half past " + getNumberDescription(n: h)
    } else if m < 30 {
        return getNumberDescription(n: m) + getMinutesString(n: m) + " past " + getNumberDescription(n: h)
    } else {
        return getNumberDescription(n: 60 - m) + getMinutesString(n: 60 - m) + " to " + getNumberDescription(n: h + 1)
    }
}

func getMinutesString(n: Int) -> String {
    if n == 1 {
        return " minute"
    } else if n == 15 {
        return ""
    } else {
        return " minutes"
    }
}

func getNumberDescription(n : Int) -> String {

    if n > 20 {
        return getDigitDescription(n: n / 10 * 10) + " " + getDigitDescription(n: n % 10)
    }

    return getDigitDescription(n: n)
}

func getDigitDescription(n : Int) -> String {
    switch n {
        case 1 : return "one"
        case 2 : return "two"
        case 3 : return "three"
        case 4 : return "four"
        case 5 : return "five"
        case 6 : return "six"
        case 7 : return "seven"
        case 8 : return "eight"
        case 9 : return "nine"
        case 10: return "ten"
        case 11: return "eleven"
        case 12: return "twelve"
        case 13: return "thirteen"
        case 14: return "fourteen"
        case 15: return "quarter"
        case 16: return "sixteen"
        case 17: return "seventeen"
        case 18: return "eighteen"
        case 19: return "nineteen"
        case 20: return "twenty"
        default : return ""
    }
}
