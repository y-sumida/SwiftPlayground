//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "BEER.JPG")!
print(image.size)

if let documentDirectoryFileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last {
    let path = documentDirectoryFileURL.appendingPathComponent("saved.jpg")
    print(path)
    if let jpg = UIImageJPEGRepresentation(image, 0.75) {
        try! jpg.write(to: path)
    }
}
