//: Playground - noun: a place where people can play

let items: [Int] = Array(0..<10)

let range1 = items[2..<4]
//let range2 = items[2..<11] // 範囲外Error

let p0 = items.prefix(0)
//let p  = items.prefix() // Error
let p1 = items.prefix(1)
let p3 = items.prefix(3)
let p10 = items.prefix(10)

let s0 = items.suffix(0)
//let s  = items.suffix() //Error
let s1 = items.suffix(1)
let s3 = items.suffix(3)
let s10 = items.suffix(10)

let df  = items.dropFirst() // 1と同じ
let df0 = items.dropFirst(0)
let df1 = items.dropFirst(1)
let df10 = items.dropFirst(10)

let dl = items.dropLast()
let dl0 = items.dropLast(0)
let dl1 = items.dropLast(1)
let dl10 = items.dropLast(10)
