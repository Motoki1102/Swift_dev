//
//  resultViewController.swift
//  WeatherAppVer2
//
//  Created by M.O on 2021/05/01.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON

import Foundation

class ResultViewController: UIViewController {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var detailsTextView: UITextView!
    
    @IBOutlet weak var todayDateLabel: UILabel!
    @IBOutlet weak var todayWeatherLabel: UILabel!
    @IBOutlet weak var todayHighLabel: UILabel!
    @IBOutlet weak var todayLowLabel: UILabel!
    
    @IBOutlet weak var tomorrowDateLabel: UILabel!
    @IBOutlet weak var tomorrowWeatherLabel: UILabel!
    @IBOutlet weak var tomorrowHighLabel: UILabel!
    @IBOutlet weak var tomorrowLowLabel: UILabel!
    
    let highString = "最高気温"
    let lowString = "最低気温"
    
    var cityName:String = ""
    var date:String = ""
    var weather:String = ""
    var high:String = ""
    var low:String = ""
    var details:[String] = []
    var cityData:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getWeatherData(row: 0)
        getWeatherData(row: 1)
    }
    
    private func getWeatherData(row: Int) {
        let url = "https://weather.tsukumijima.net/api/forecast?city=\(cityData[0])"
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON {(response) in
            switch response.result {
            case .success:
                
                let json = JSON(response.data as Any)
                
                let cityName = json["title"].string
                let date = json["forecasts"][row]["date"].string
                let weather = json["forecasts"][row]["telop"].string
                let high = json["forecasts"][row]["temperature"]["max"]["celsius"].string
                let low = json["forecasts"][row]["temperature"]["min"]["celsius"].string
                let details = json["description"]["text"].string
                
                if cityName != nil {
                    self.cityName = "\(cityName!)"
                } else {
                    self.cityName = ": No Details"
                }
                
                if date != nil {
                    self.weather = weather!
                } else {
                    self.weather = ": No Data"
                }
                
                if high != nil {
                    self.high = ": \(high!)"
                } else {
                    self.high = ": No Data"
                }
                
                if low != nil {
                    self.low = ": \(low!)"
                } else {
                    self.low = ": No Data"
                }
                
                if details != nil {
                    self.details = (details?.components(separatedBy: .newlines))!
                } else {
                    self.details = ["No Details"]
                }
                
                self.setWeatherData(row: row)
                
            case .failure(let error):
                print("エラー")
                print(error)
                
            }
        }
    }
    
    private func setWeatherData(row: Int) {
        
        if row == 0 {
            
            cityNameLabel.text = cityName
            todayWeatherLabel.text = weather
            todayDateLabel.text = date
            todayHighLabel.text = highString + high
            todayLowLabel.text = lowString + low
            
            detailsTextView.text = details[0]
            
        } else if row == 1 {
            
            tomorrowWeatherLabel.text = weather
            tomorrowDateLabel.text = date
            tomorrowHighLabel.text = highString + high
            tomorrowLowLabel.text = lowString + low
            
        }
    }
    
}
