protocol A {
    func hoge()
}

extension A {
    func hoge() {
        print("protocol A")
    }
}

protocol B {
    func hoge()
}

extension B {
    func hoge() {
       print("protocol B")
    }
}

class fuga: A, B { // Error
    
}