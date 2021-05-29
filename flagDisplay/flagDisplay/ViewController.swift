//
//  ViewController.swift
//  flagDisplay
//
//  Created by Motoki Onayama on 2021/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flagDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //flagDisplayLabel.isHidden = true
    }
    
    @IBAction func flagDisplayButton(_ sender: UIButton) {
        flagDisplayLabel.isHidden = true
    }
    
    @IBAction func DisplayButton(_ sender: UIButton) {
        flagDisplayLabel.isHidden = false
    }
}

