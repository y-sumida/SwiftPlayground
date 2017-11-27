//: Playground - noun: a place where people can play

var hoge: [Int] = Array(0..<10) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var fuga = hoge

hoge.popLast()
dump(hoge.last!) // 8
dump(fuga.last!) // 9

fuga.popLast()
dump(hoge.last!) // 8
dump(fuga.last!) // 8

class MyClass {
    var id = 0
    var name: String?
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

var foo: [MyClass] = []
foo.append(MyClass(id: 1, name: "kevin"))
foo.append(MyClass(id: 2, name: "stuart"))
foo.append(MyClass(id: 3, name: "bob"))

var bar: [MyClass] = foo

foo[0].id = 10
print(foo[0].id) // 10
print(bar[0].id) // 10

bar[0].name = "jorge"
print(foo[0].name!) // jorge
print(bar[0].name!) // jorge

foo[0] = MyClass(id: 100, name: "dave")
print(foo[0].name!) // dave
print(bar[0].name!) // jorge

bar.append(MyClass(id:200, name: "phill"))
print(foo.count) // 3
print(bar.count) // 4
