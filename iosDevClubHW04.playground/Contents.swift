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

