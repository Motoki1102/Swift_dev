//
//  ViewController.swift
//  UISwitchStudy
//
//  Created by Motoki Onayama on 2021/05/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .red
        }
        else {
            view.backgroundColor = .blue
        }
    }

}

