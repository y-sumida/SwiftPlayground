//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class MyViewController: UIViewController, XMLParserDelegate {
    var parser: XMLParser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://b.hatena.ne.jp/hotentry/it.rss"
        let url: URL = URL(string: urlString)!

        parser = XMLParser(contentsOf: url)
        parser.delegate = self

        parser.parse()
    }

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        print("Start Tag:" + elementName)
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        print("Element:" + string)
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("End Tag:" + elementName)
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("Parse Start")
    }

    func parserDidEndDocument(_ parser: XMLParser) {
        print("Pase End")
    }

    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("Parse Error")
    }
}


var vc: MyViewController = MyViewController()
PlaygroundPage.current.liveView = vc