//: Playground - noun: a place where people can play

let array: [Int] = [1, 2, 3, 4, 5]
print(array.indices.last!)
print(array.indices.first!)

print(array.startIndex)
print(array.endIndex)

print(array.index(before: array.startIndex))
print(array.index(before: array.endIndex))
