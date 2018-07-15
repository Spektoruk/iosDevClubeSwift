//: Playground - noun: a place where people can play

import UIKit

print("Int min = \(Int.min)")
print("Int max = \(Int.max)")
print("UInt min = \(UInt.min)")
print("UInt max = \(Int.max)")

print("Int8 min = \(Int8.min)")
print("Int8 max = \(Int8.max)")
print("UInt8 min = \(UInt8.min)")
print("UInt8 max = \(Int8.max)")

print("Int16 min = \(Int16.min)")
print("Int16 max = \(Int16.max)")
print("UInt16 min = \(UInt16.min)")
print("UInt16 max = \(Int16.max)")

print("Int32 min = \(Int32.min)")
print("Int32 max = \(Int32.max)")
print("UInt32 min = \(UInt32.min)")
print("UInt32 max = \(Int32.max)")

let a = 5
let b :Float = 2.2
let c = 3.9

let abcAddInt = Int(Double(a) + Double(b) + c)
let abcAddFloat = Float(a) + b + Float(c)
let abcAddDouble = Double(a) + Double(b) + c

print(abcAddInt)
print(abcAddFloat)
print(abcAddDouble)

if Double(abcAddInt) < abcAddDouble {
    print("Double Win")
} else {
    print("Int Win")
}
