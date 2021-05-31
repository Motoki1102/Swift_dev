//
//  CustomUserCell.swift
//  userTableList
//
//  Created by Motoki Onayama on 2021/05/30.
//

import UIKit

class CustomUserCell: UITableViewCell {
    @IBOutlet weak var UserView: UIView!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var UserNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
