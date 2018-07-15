//: Playground - noun: a place where people can play

import UIKit

//Tuples

var myTuple = (maxPushUps: 50, maxPullUps: 20, maxSquatting: 40)

print(myTuple)
print("My max count of push-ups \(myTuple.maxPushUps)\nMy max count of pull-ups \(myTuple.maxPullUps)\nMy max count of squatts \(myTuple.2)")

let myFriendTuple = (maxPushUps: 30, maxPullUps: 12, maxSquatting: 60)

var otherTuple = myTuple
myTuple = myFriendTuple
print(myTuple)

let diffTuple = (myTuple.0 - myFriendTuple.0, myTuple.1 - myFriendTuple.1, myTuple.2 - myFriendTuple.2)
print("Range my and my friend is:\n push-ups \(diffTuple.0)\n pull-ups \(diffTuple.1)\n squatts \(diffTuple.2)")


