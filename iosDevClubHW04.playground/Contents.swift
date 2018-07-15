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
    sum += d
}

if let e = Int(e){
    sum += e
}

if let f = Int(f){
    sum += f
}

if let g = Int(g){
    sum += g
}
print("Sum of variable is \(sum)")

//2 tuple(Int(status code), String(message) optional, String(error mesage) optional)
// If status code 200-300 = "Good" If another = "Error!!!"
//new Tuple withot status code - one nil and one with spme date
let statusNoContent: (statusCode: Int, message: String?, errorMessage: String?)
statusNoContent.statusCode = 250
statusNoContent.message = "No Content"
statusNoContent.errorMessage = nil

let statusForbidden: (statusCode: Int, message: String?, errorMessage: String?)
statusForbidden.statusCode = 403
statusForbidden.message = nil
statusForbidden.errorMessage = "Forbidden"

if statusNoContent.statusCode >= 200 && statusNoContent.statusCode<300{
    print("Succes! Server return\(statusNoContent.message!)")
}else {
    print("Error! Server return\(statusNoContent.errorMessage!)")
}

if statusForbidden.statusCode >= 200 && statusForbidden.statusCode<300{
    print("Succes! Server return\(statusForbidden.message!)")
}else{
    print("Error! Server return\(statusForbidden.errorMessage!)")
}
//without status code
let serverTuple3: (message: String?, errorMessage: String?) = ("OK", "Good")
if serverTuple3.message != nil{
    print("Server response: \(serverTuple3.message!)")
}else if serverTuple3.errorMessage != nil {
    print("Server response: \(serverTuple3.errorMessage!)")
}

//3 student Tuple( name, car number, rating) 5 stubent. firstly nil date . Names, After if he have car - add number, if rating(0-5) - add rating.
//print all student
let student1 : (name: String!, carNumber: String?, rating: Int?)
let student2 : (name: String, carNumber: String?, rating: Int?)
let student3 : (name: String, carNumber: String?, rating: Int?)
let student4 : (name: String, carNumber: String?, rating: Int?)
let student5 : (name: String, carNumber: String?, rating: Int?)

student1 = ("Alisa", nil, 5)
student2 = ("Roma", "Br54723", 4)
student3 = ("Ira", "De6374", nil)
student4 = ("Ashot", nil, 0)
student5 = ("Denis", "As47538", 3)

print("Student 1 \(student1.name).")
if student1.carNumber != nil {
    print("Have a car \(student1.carNumber!).")
} else {
    print("Dont have a car.")
}
if student1.rating != nil {
    print("His/her rating is \(student1.rating!).")
} else {
    print("Dont have a rating!")
}

print("Student 2 \(student2.name).")
if student2.carNumber != nil {
    print("Have a car \(student2.carNumber!).")
} else {
    print("Dont have a car.")
}
if student2.rating != nil {
    print("His/her rating is \(student2.rating!).")
} else {
    print("Dont have a rating!")
}

print("Student 3 \(student3.name).")
if student3.carNumber != nil {
    print("Have a car \(student3.carNumber!).")
} else {
    print("Dont have a car.")
}
if student3.rating != nil {
    print("His/her rating is \(student3.rating!).")
} else {
    print("Dont have a rating!")
}

print("Student 4 \(student4.name).")
if student4.carNumber != nil {
    print("Have a car \(student4.carNumber!).")
} else {
    print("Dont have a car.")
}
if student4.rating != nil {
    print("His/her rating is \(student4.rating!).")
} else {
    print("Dont have a rating!")
}

print("Student 5 \(student5.name).")
if student5.carNumber != nil {
    print("Have a car \(student5.carNumber!).")
} else {
    print("Dont have a car.")
}
if student5.rating != nil {
    print("His/her rating is \(student5.rating!).")
} else {
    print("Dont have a rating!")
}
