struct hoge {
    var name: String
    var children: [hoge]
}

var parent = hoge(name: "hoge", children: [])

for i in 0..<10 {
    var child = hoge(name: "hoge\(i)", children: [])
    var grandChild = hoge(name: "hoge\(i)-\(i)", children: [])

    child.children.append(grandChild)
    parent.children.append(child)
}

func flatten(hoge: [hoge]) -> [String] {
    var result: [String] = []
    hoge.map {
        flattenImple(hoge: $0, result: &result)
    }
    
    return result
}

func flattenImple(hoge: hoge, result: inout Array<String>) {
    result.append(hoge.name)
    hoge.children.map {
        flattenImple(hoge: $0, result: &result)
    }
}

var array: [String] = []
flattenImple(hoge: parent, result: &array)

let result = flatten(hoge: [parent, parent])
dump(result)


