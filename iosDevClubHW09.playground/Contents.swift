//: Playground - noun: a place where people can play

import Cocoa
//1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
//
let str = "Часто бывает так, что смысл текста не имеет большого значения, а важен только его объем или структура. Генератор текста онлайн позволит задать необходимое количество слов, из которых будут сформировано указанное Вами число абзацев. Правда, смысл сгенерированный текст иметь не будет, но ведь этого нам и не требуется! Данный генератор случайного текста также предоставляет возможность выбрать стиль: классическая проза, бизнес, юмор и многие другие темы, что позволит более реалистично и уместно преподнести созданный текст. Создайте свой литературный шедевр в один клик!"
var glas = 0
var sogl = 0
var numbers = 0
var lit = 0
for character in str {
    switch character {
    case "а", "о", "и", "е", "ё", "э", "ы", "у", "ю", "я":
        glas += 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ" :
        sogl += 1
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        numbers += 1
    case ".", ",", "!", ":":
        lit += 1
    default:
        break
    }
}
print("Количество гласных в тексте \(glas), количество согласных \(sogl), количество цифр \(numbers), количество символов \(lit)")

//2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
//
let age = 43
switch age {
case 0...8:
    print("Rebenok")
case 9...18:
    print("Podrostok")
case 18...35:
    print("Vzrosliy")
case 36...59:
    print("Mnogo let")
case 60...80:
    print("Ogo")
default:
    print("Ti kto takoy")
}
//3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.
//
let fullName = ("Спекторук", "Алексей", "Сергеевич")
//
switch fullName {
case _ where fullName.1.hasPrefix("А") || fullName.1.hasPrefix("О"):
    print("Hello \(fullName.1) !")
case _ where fullName.2.hasPrefix("В") || fullName.2.hasPrefix("Д"):
    print("Hello \(fullName.2) !")
case _ where fullName.0.hasPrefix("Е") || fullName.0.hasPrefix("З"):
    print("Hello \(fullName.0) !")
default:
   print("Hello \(fullName.0) \(fullName.1) \(fullName.2) !")
}
//
switch fullName {
case (_, let name, _) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Hello \(name) !")
case (_, _, let second) where second.hasPrefix("В") || second.hasPrefix("Д"):
    print("Hello \(second) !")
case (let fam, _, _) where fam.hasPrefix("Е") || fam.hasPrefix("З"):
    print("Hello \(fam) !")
default:
    print("Hello \(fullName.0) \(fullName.1) \(fullName.2) !")
}

//4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
let ships = [(3, 8), (1, 1), (5, 3), (6, 2), (7, 9)]
let shoot = (6, 2)

for ship in ships{
    switch ship {
    case _ where shoot.0 == ship.0 || shoot.1 == ship.1:
        print("Kill")
    default:
        print("Missed")
    }
}


let shi = [(3, 8), (1, 1), (5, 3), (6, 2), (7, 9)]
let sho = (6, 2)
var n = 0
for n in shi{
    switch n {
    case sho:
        print("Kill")
    default:
        print("Missed")
    }
    n += 1
}
