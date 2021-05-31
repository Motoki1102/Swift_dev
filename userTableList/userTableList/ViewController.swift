//
//  ViewController.swift
//  userTableList
//
//  Created by Motoki Onayama on 2021/05/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UserTable: UITableView!
    
    //let UserArray = ["正人", "慎二", "舞香"]
    let list = UserArrays()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserTable.delegate = self
        UserTable.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
        let targetViewController = self.storyboard!.instantiateViewController(withIdentifier: "categorySelect")
            self.present(targetViewController, animated: true, completion: nil)
        */
        //performSegue(withIdentifier: "toNextViewController", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.UserArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UserTable.dequeueReusableCell(withIdentifier: "customCell") as! CustomUserCell
        let Users = list.UserArray[indexPath.row]
        cell.UserImage.image = UIImage(named: Users)
        cell.UserNameLbl.text = Users
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNextViewController" {
            print("成功！")
        }
    }
}
