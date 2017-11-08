func a(number: Int?, string: String?) {
    switch (number, string) {
    case (let number?, let string?):
        // 両方nil以外
        print("1 number: \(String(describing: number)), string: \(String(describing: string))")
    case (let number?,  nil):
        // numbreはnil以外、stringはnil
        print("2 number: \(String(describing: number)), string: nil")
    case (nil, let string?):
        // numbreはnil、stringはnil以外
        print("3 number: nil, string: \(String(describing: string))")
    case (nil, nil):
        print("4 number: nil, string: nil")
    }
}

func b(number: Int?, string: String?) {
    switch (number, string) {
    case (let number, let string):
        // ?がないと両方nilも含むのですべてマッチする
        print("1 number: \(String(describing: number)), string: \(String(describing: string))")
    /*
    case (let number?,  nil):
        // numbreはnil以外、stringはnil
        print("2 number: \(String(describing: number)), string: nil")
    case (nil, let string?):
        // numbreはnil、stringはnil以外
        print("3 number: nil, string: \(String(describing: string))")
    case (nil, nil):
        print("4 number: nil, string: nil")
     */
    }
}

a(number: 1, string: "hoge")
a(number: 1, string: nil)
a(number: nil, string: "hoge")
a(number: nil, string: nil)

b(number: 1, string: "hoge")
b(number: 1, string: nil)
b(number: nil, string: "hoge")
b(number: nil, string: nil)

