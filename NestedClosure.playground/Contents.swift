//: Playground - noun: a place where people can play

class Hoge {
    deinit {
        print("deinit")
    }
    let n: Int
    
    init(n: Int) {
       self.n = n
    }
    lazy var closure1: () -> Int = {
        return {[weak self] in return (self?.n)! * 2}()
    }
    lazy var closure2: () -> Int = { [weak self] in
        return {return (self?.n)! * 2}()
    }
    lazy var closure3: () -> Int = { [weak self] in
        return {[weak self] in return (self?.n)! * 2}()
    }
}


do {
    // deinitできない
    let hoge = Hoge(n: 100)
    print(hoge.closure1())
}

do {
    let hoge = Hoge(n: 100)
    print(hoge.closure2())
}

do {
    let hoge = Hoge(n: 100)
    print(hoge.closure3())
}
