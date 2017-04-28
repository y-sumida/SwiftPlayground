//: Playground - noun: a place where people can play

var hoge: [Int] = Array(0..<10) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var fuga = hoge

hoge.popLast()
dump(hoge.last!) // 8
dump(fuga.last!) // 9

fuga.popLast()
dump(hoge.last!) // 8
dump(fuga.last!) // 8

