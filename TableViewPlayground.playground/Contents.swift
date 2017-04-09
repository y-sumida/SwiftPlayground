//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class MyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var table: UITableView!
    let rows = ["hoge", "fuga", "piyo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        table = UITableView(frame:self.view.frame)
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let text = self.rows[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
}

var vc: MyViewController = MyViewController()
PlaygroundPage.current.liveView = vc
