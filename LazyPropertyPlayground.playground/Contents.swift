//: Playground - noun: a place where people can play

class Hoge {
    var x: Int!
    var y: Int!
    //var z: Int = self.calc() // error: use of unresolved identifier 'self'
    lazy var z: Int = self.calc() // インスタンス生成時には

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    func calc() -> Int {
        return x + y
    }
}

let hoge: Hoge = Hoge(x: 10, y: 20)
dump(hoge) // z.storage: nil

print(hoge.z) // 30