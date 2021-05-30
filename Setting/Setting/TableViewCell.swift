//
//  TableViewCell.swift
//  Setting
//
//  Created by Motoki Onayama on 2021/05/29.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var settingView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var AppImg: UIImageView!
    @IBOutlet weak var flagDisplay: UISwitch!
    @IBOutlet weak var flagLbl: UILabel!
    
    
    var switchValueChangedCompletion: ((Bool, Int) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            AppImg.isHidden = false
            flagLbl.text = "表示中"
        }
        else {
            AppImg.isHidden = true
            flagLbl.text = "非表示中"
        }
    }
}
