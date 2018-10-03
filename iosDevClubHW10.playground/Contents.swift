//: Playground - noun: a place where people can play

import UIKit

//1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.
//
func heart() -> String {
  return("<3")
}
func love() -> String {
    return("love")
}
func you() -> String {
    return("you")
}

print("I \(love()) \(you()) ! \(heart())")
//2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
//
func chess(x: String, y: Int) -> String{
    let leters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    var number = 1
    for leter in leters{
        if leter != x{
        number += 1
        } else {
        break
        }
    }
    if (number+y) % 2 == 0 {
        return("Black")
    } else {
        return("White")
    }
}

print(chess(x: "a", y: 6))
//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
//
func reverted(ar:[Int]) -> [Int]{
    var rev = [Int]()
    for i in ar{
        rev.insert(i, at: 0)
    }
    return rev
}
print(reverted(ar:[1, 2, 3, 4, 5]))

func reversedA(a:[Any]) -> [Any]{
    return a.reversed()
}
print(reversedA(a: [1, 3, 5, 7, 9]))

func revertedRange(range: Int...) -> [Int]{
    var array = [Int]()
    for n in range{
        array.append(n)
    }
    return reverted(ar: array)
}
print(revertedRange(range: 1, 3, 100))

//4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
//
var mas = [1, 2, 3, 4, 5]
func inoutArr(art: inout [Int]){
    mas = art.reversed()
}
inoutArr(art: &mas)
print(mas)

//5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)

