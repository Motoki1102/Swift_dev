//
//  ViewController.swift
//  userTable
//
//  Created by Motoki Onayama on 2021/05/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var receiveData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = receiveData
    }


}

