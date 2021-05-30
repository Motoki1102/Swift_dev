//
//  ViewController.swift
//  Setting
//
//  Created by Motoki Onayama on 2021/05/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SettingListView: UITableView!
    
    let setApp = ["Pencil", "Trash", "Doc", "Ticket"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SettingListView.delegate = self
        SettingListView.dataSource = self
    }
}

    extension ViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 100
            }
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return setApp.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = SettingListView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
                
                let App = setApp[indexPath.row]
                cell.tag = indexPath.row
                
                cell.AppImg.image = UIImage(named: App)
                cell.nameLbl.text = App
                
                return cell
            }
    }

