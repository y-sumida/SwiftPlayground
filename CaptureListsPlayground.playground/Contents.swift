var a: Int = 0

let closure1: () -> Int = { return a }
let closure2: () -> Int = { [a] in return a }

a = 10
closure1() // 10
closure2() // 0

// reference
class Hoge {
    var a: Int = 0
}

var x: Hoge = Hoge()
let closure3: () -> Int = { return x.a }
let closure4: () -> Int = { [x] in return x.a }

x.a = 10
closure3() // 10
closure4() // 10

// named value
let closure5: () -> Int = { [value = x.a] in return value }
closure5() // 10
