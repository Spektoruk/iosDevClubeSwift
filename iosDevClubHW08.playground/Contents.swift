//: Playground - noun: a place where people can play

import Cocoa


//1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(
//
var students = ["Alex Sobi" : 78, "Tina Soer" : 43, "Ted Brauni" : 90, "Ringo Star" : 65, "Elena Bro" : 89]
students["Tina Soer"] = 81
students.updateValue(79, forKey: "Ringo Star")
students

students["Robi Frint"] = 77
students["Fog Daso"] = 93
students

students.removeValue(forKey: "Ted Brauni")
students

//После всех этих перетрубаций посчитайте общий бал группы и средний бал
//
var sum = 0
for key in students.keys{
    sum += students[key]!
}
print(sum)

var sum2 = 0
for( _, value) in students{
    sum2 += value
}
print(sum2)

var sum3 = 0
var count = 0
for (_, value) in students {
    sum3 += value
    count += 1
}
var average : Int = sum3 / count
print(average)

//2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
//В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
//
var months = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

for (key, value) in months{
    print("\(key) has \(value) days")
}
print("---")
for key in months.keys{
    print("\(key) has \(months[key]!) days")
}

//3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
//
//Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).


