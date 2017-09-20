//: Playground - noun: a place where people can play

import UIKit

protocol Injectable {
    associatedtype Dependency
    init(dependency: Dependency)
}

class MyViewController: UIViewController, Injectable {
    var dependency: Dependency!
    
    struct Dependency {
        let userID: Int
    }
    
    required init(dependency: Dependency) {
        super.init(nibName: nil, bundle: nil)
        self.dependency = dependency
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.dependency.userID)
    }
}


var vc: MyViewController = MyViewController(dependency: .init(userID: 100))
