//: Playground - noun: a place where people can play

import Cocoa
import Foundation

//1. Создать пять строковых констант
//Одни константы это только цифры, другие содержат еще и буквы
//Найти сумму всех этих констант приведя их к Int
//(Используйте и optional binding и forced unwrapping)
//1. Выполните задание #1 урока о базовых операторах:
//только вместо forced unwrapping и optional binding используйте оператор ??
//Когда посчитаете сумму, то представьте свое выражение в виде строки
//Например: 5 + nil + 2 + 3 + nil = 10
//но в первом случае используйте интерполяцию строк, а во втором конкатенацию

let a = "2"
let b = "123safads"
let c = "3"
let d = "456some"
let e = "5"

let num1 = Int(a) ?? 0
let num2 = Int(b) ?? 0
let num3 = Int(c) ?? 0
let num4 = Int(d) ?? 0
let num5 = Int(e) ?? 0

let summ = num1 + num2 + num3 + num4 + num5
print(summ)

let summString = String(num1) + String(num2) + String(num3) + String(num4) + String(num5)
print(summString)

let summString2 = "\(num1) + \(num2) + \(num3) + \(num4) + \(num5)"
print(summString2)
    

//2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
//можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
let longString = "\u{15}\u{100} test"
//Swift
longString.count
//ObjC
(longString as NSString).length

//3. Создайте строку английский алфавит, все буквы малые от a до z
//задайте константу - один из символов этого алфавита
//Используя цикл for определите под каким индексов в строке находится этот символ
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var x = 0
var constant = "k"
for character in alphabet{
    x += 1
    if constant == String(character) {
        break
    }
}
print("Index \(constant) = \(x)")

print(alphabet.count)

