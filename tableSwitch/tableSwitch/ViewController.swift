//
//  ViewController.swift
//  tableSwitch
//
//  Created by Motoki Onayama on 2021/05/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{ //追加①

    let TODO = ["牛乳を買う", "掃除をする", "アプリ開発の勉強をする"] //追加②

    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //最初からあるコード
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //追加③ セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TODO.count
    }

    //追加④ セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = TODO[indexPath.row]
        cell.imageView!.image = UIImage(named: "visual_1b.jpeg")
        return cell
    }
}
