//: Playground - noun: a place where people can play

import UIKit


let a = "123"
let b = "123safads"
let c = "321"
let d = "456some"
let e = "345"
let f = "fasdf98"
let g = "574"

//1. summ all string -> Int(if string int = summ string). some from optional binding, some forced
var sum = 0
//forced unwrapping
if Int(a) != nil {
    sum += Int(a)!
}

if Int(b) != nil {
    sum += Int(b)!
}

if Int(c) != nil{
    sum += Int(c)!
}
//optional binding
if let d = Int(d){
    sum += Int(d)
}

if let e = Int(e){
    sum += Int(e)
}

if let f = Int(f){
    sum += Int(f)
}

if let g = Int(g){
    sum += Int(g)
}
print("Sum of variable is \(sum)")


//2 tuple(Int(status code), String(message) optional, String(error mesage) optional)
// If status code 200-300 = "Good" If another = "Error!!!"
//new Tuple withot status code - one nil and one with spme date
//3 student Tuple( name, car number, rating) 5 stubent. firstly nil date . Names, After if he have car - add number, if rating(0-5) - add rating.
//print all student

