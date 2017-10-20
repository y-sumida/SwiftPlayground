//: Playground - noun: a place where people can play

import Foundation
import PlaygroundSupport

let urlString = "https://qiita.com/api/v2/items"
let url = URL(string: urlString)
var request = URLRequest(url: url!)
request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments)
            print("json: \(json)")
        } catch {
            print("Serialize Error")
        }
    } else {
        print(error ?? "Error")
    }
}
task.resume()
PlaygroundPage.current.needsIndefiniteExecution = true
