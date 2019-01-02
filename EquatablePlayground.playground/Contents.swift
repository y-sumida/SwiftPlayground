class Hoge {
    var i: Int
    init(i: Int) {
        self.i = i
    }
}

let a = Hoge(i: 10)
let b = Hoge(i: 10)
let c = a

//print(a == b) // Error
print(a === b ) // false
print(a !== b ) // false
print(a === c) // true


class Fuga: Equatable {
    var i: Int
    init(i: Int) {
        self.i = i
    }
    
    static func ==(lhs: Fuga, rhs: Fuga) -> Bool {
        return lhs.i == rhs.i
    }
}

let d = Fuga(i: 10)
let e = Fuga(i: 10)
let f = d

print(d == e) // true
print(d === e) // false
print(d !== e ) // true
print(d === f) // true
