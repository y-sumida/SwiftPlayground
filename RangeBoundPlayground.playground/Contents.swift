//: Playground - noun: a place where people can play

import Foundation

let str = "ABCCCDEFG"
if let range = str.range(of: "CCC") {
    let start = range.lowerBound
    print(str.distance(from: str.startIndex, to: start)) // 2
}
else {
    print("not found")
}

