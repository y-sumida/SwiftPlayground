//: Playground - noun: a place where people can play

import Foundation

class Hoge: NSObject, NSCoding {
    var id: Int = 0
    var name: String = ""
    
    init(id: Int, name: String) {
        super.init()
        
        self.id = id
        self.name = name
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.id, forKey: "id")
        aCoder.encode(self.name, forKey: "name")
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init()
        
        self.id = aDecoder.decodeInteger(forKey: "id")
        self.name = aDecoder.decodeObject(forKey: "name") as! String
    }
}

let hoge = Hoge(id: 1, name: "hogehoge")

let sharedInstance = Foundation.UserDefaults.standard

let object = NSKeyedArchiver.archivedData(withRootObject: hoge)
sharedInstance.set(object, forKey: "hoge")
sharedInstance.synchronize()


if let data = sharedInstance.object(forKey: "hoge") as? Data {
    let result = NSKeyedUnarchiver.unarchiveObject(with: data) as! Hoge
    dump(result)
}

// 単純な型ならこっちのほうがいいかも
struct Fuga {
    var id: Int
    var name: String

    func asDictionary() -> [String: Any] {
        return ["id": id, "name": name]
    }
}

let fuga = Fuga(id: 1, name: "fugafuga")

sharedInstance.set(fuga.asDictionary(), forKey: "fuga")
sharedInstance.synchronize()

dump(sharedInstance.object(forKey: "fuga") as? [String: Any])
