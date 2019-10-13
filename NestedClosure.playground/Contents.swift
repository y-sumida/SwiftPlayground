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
    lazy var closure4: () -> Int = {
        return {[unowned self] in return self.n * 2}()
    }
    lazy var closure5: () -> Int = { [unowned self] in
        return {return self.n * 2}()
    }
    lazy var closure6: () -> Int = { [unowned self] in
        return {[unowned self] in return self.n * 2}()
    }
}


do {
    // deinitできない
    print("1")
    let hoge = Hoge(n: 100)
    print(hoge.closure1())
}

do {
    print("2")
    let hoge = Hoge(n: 100)
    print(hoge.closure2())
}

do {
    print("3")
    let hoge = Hoge(n: 100)
    print(hoge.closure3())
}

do {
    print("start4")
    // deinitできない
    let hoge = Hoge(n: 100)
    print(hoge.closure4())
}

do {
    print("5")
    let hoge = Hoge(n: 100)
    print(hoge.closure5())
}

do {
    print("6")
    let hoge = Hoge(n: 100)
    print(hoge.closure6())
}
