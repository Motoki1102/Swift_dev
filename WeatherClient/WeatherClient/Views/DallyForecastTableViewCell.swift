//
//  DallyForecastTableViewCell.swift
//  WeatherClient
//
//  Created by M.O on 2021/04/29.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

class DallyForecastTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var forecastImageView: UIImageView!
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
