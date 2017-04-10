//: Playground - noun: a place where people can play

let items: [Int] = Array(1..<1000)

var result: Int = 0
for i in items {
    if i % 2 == 0 {
        result = i
        break
    }
}

print(result)

let filterResult = items.filter { $0 % 2 == 0}.first
dump(filterResult)

let lazyResult = items.lazy.filter { $0 % 2 == 0 }.first
dump(lazyResult)

