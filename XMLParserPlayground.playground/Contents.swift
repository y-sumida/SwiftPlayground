//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class Item {
    var title : String = ""
    var url : String = ""
    var bookmarkCount: Int = 0
}

class MyViewController: UIViewController, XMLParserDelegate {
    var parser: XMLParser!
    var entries: [Item] = []
    
    var key : String = ""
    var tmpItem : Item!

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "http://b.hatena.ne.jp/hotentry/it.rss"
        let url: URL = URL(string: urlString)!

        parser = XMLParser(contentsOf: url)
        parser.delegate = self

        parser.parse()
    }

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {

        if elementName == "item" {
            tmpItem = Item()
            entries.append(tmpItem)
        }
        else {
            key = elementName
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if key == "title" {
            if (tmpItem != nil) {
                tmpItem.title = string
            }
        }
        else if key == "link" {
            if (tmpItem != nil) {
                tmpItem.url = string
            }
        }
        else if key == "hatena:bookmarkcount" {
            if (tmpItem != nil) {
                tmpItem.bookmarkCount = Int(string)!
            }
        }
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        key = ""
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("Parse Start")
    }

    func parserDidEndDocument(_ parser: XMLParser) {
        entries.forEach { item in
            print(item.title)
            print(item.url)
            print(item.bookmarkCount)
        }
    }

    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("Parse Error")
    }
}


var vc: MyViewController = MyViewController()
PlaygroundPage.current.liveView = vc
