class Hoge {
    var num: Int = 0
    init (num: Int) {
       self.num = num
    }
}

struct Fuga {
    let hoge: Hoge
    var piyo: Int
}

func Piyo(fuga: Fuga) {
    fuga.hoge.num += 100
    //fuga.piyo += 200 // Left side of mutating operator isn't mutable: 'fuga' is a 'let' constant
}

let hoge: Hoge = Hoge(num: 10)
var fuga: Fuga = Fuga(hoge: hoge, piyo: 30)

dump(fuga) // hoge.num -> 10
Piyo(fuga: fuga)
dump(fuga) // hoge.num -> 110

