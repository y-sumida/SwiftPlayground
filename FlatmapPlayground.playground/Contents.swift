//: Playground - noun: a place where people can play

var items: [[String : Any]?] = []

for i in (0..<10) {
    if i % 2 == 0 {
        items.append(["title": "fuga\(i)"])
    }
    else {
        items.append(nil)
    }
}

var titles:[String?] =  items.flatMap { $0?["title"] as? String }
dump(titles) // nil が省かれてる