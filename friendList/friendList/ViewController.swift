//
//  ViewController.swift
//  friendList
//
//  Created by Motoki Onayama on 2021/05/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var friendsView: UITableView!
    
    //配列の作成
    let friends = ["Sasha", "Takeru", "Michael", "Shigeru", "Ghana", "Gaia", "Cecil", "Matumoto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsView.delegate = self
        friendsView.dataSource = self
        friendsView.allowsSelection = false
        //friendsView.separatorStyle = .none
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendsView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        let friend = friends[indexPath.row]
        cell.avatarImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        
        return cell
    }
    
    
}
