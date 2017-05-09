//: Playground - noun: a place where people can play
import Foundation

let components: URLComponents? = URLComponents(string: "http://example.com/?hoge=1&fuga=value")


func queryToDict(_ components:URLComponents) -> [String: String] {
    var dict: [String: String] = [:]
    
    components.queryItems?.forEach { item in
        dict[item.name] = item.value
    }

    return dict
}

dump(queryToDict(components!))

