//: Playground - noun: a place where people can play

import UIKit

//1 Count second from year start to my birthday

let january = 31
let february = 28
let march = 31
let april = 30
let may = 31
let june = 30
let july = 31
let august = 31
let september = 30
let october = 31
let november = 30
let december = 31

let myBday = (month: august, day: 17)

let fromNyToMyBday = january + february + march + april + may + june + july + 17
let fromNyToMyBday2 = 31 * 4 + 28 + 30 * 2 + 17
let secFromNyToMyBday = fromNyToMyBday * 24 * 60 * 60
print(secFromNyToMyBday)

//2 Quartal
let firstQuartal = january + february + march
let secQuartal = firstQuartal + april + may + june
let thirdQuartal = secQuartal + july + august + september
let fourthQuartal = thirdQuartal + october + november + december

if fromNyToMyBday <= firstQuartal {
    print("In first quartal")
} else if fromNyToMyBday > firstQuartal && fromNyToMyBday <= secQuartal {
    print ("In second quartal")
} else if fromNyToMyBday > secQuartal && fromNyToMyBday <= thirdQuartal {
   print ("In third quartal")
} else {
    print ("In fourth quartal")
}

//3 Variable 5 unary ++prefix and postfix++ operators - not actual for swift 3

//4 chess desc 8 * 8. We have horisontal and vertical number a(x, y), what color of this field



