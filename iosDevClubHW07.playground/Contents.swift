//: Playground - noun: a place where people can play

import Cocoa

//1. создать массив "дни в месяцах"
//12 элементов содержащих количество дней в соответствующем месяце
//
let dayInTheMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
dayInTheMonths.count

//используя цикл for и этот массив
//
//    - выведите количество дней в каждом месяце (без имен месяцев)
//
for i in dayInTheMonths{
    print(i)
}
print("---")
//- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
//
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
for i in 0..<months.count{
    print("\(months[i]) has \(dayInTheMonths[i]) days")
}
print("---")
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
//
var monthesTuples = [(month: String, dayInTheMonths: Int)]()
for i in 0..<months.count{
    monthesTuples.append((months[i], dayInTheMonths[i]))
}

for i in 0..<monthesTuples.count{
    print("\(months[i]) has \(dayInTheMonths[i])")
}
print("---")
//- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
//
for i in (0..<monthesTuples.count).reversed(){
    print("\(months[i]) has \(dayInTheMonths[i])")
}
print("---")
//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
//
let dob = (month: 8, day: 17)
var dayAlexey = 0
for i in 0..<(dob.month - 1){
    dayAlexey += dayInTheMonths[i]
}
dayAlexey += dob.day
print(dayAlexey)
print("---")
//2. Сделайте первое задание к уроку номер 4 используя массивы:
//
//(создайте массив опшинал интов и посчитайте сумму)
let a = "1"
let b = "123safads"
let c = "3"
let d = "456some"
let e = "4"
let optional = [Int(a), Int(b), Int(c), Int(d), Int(e)]

//- в одном случае используйте optional binding
var sumOptional = 0
for i in optional{
    if let num = i{
    sumOptional += num
    }
}
print(sumOptional)
print("---")

//- в другом forced unwrapping
var sumForced = 0
for i in optional{
    if i != nil{
        sumForced += i!
    }
}
print(sumForced)
print("---")

//- а в третьем оператор ??
var sumO = 0
for i in optional{
    sumO += i ?? 0
}
print(sumO)
print("---")
//
//3. создайте строку алфавит и пустой массив строк
//
//в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var alphabetArrey = [String]()
var alphabetArreyr = [String]()
for character in alphabet{
    let st = String(character)
    alphabetArrey.insert(st, at: 0)
}
print(alphabetArrey)

//for i in alphabetArrey.reversed(){
//    alphabetArreyr.append(i)
//}
//print(alphabetArreyr)
