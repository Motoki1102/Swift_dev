//
//  CityModel.swift
//  WeatherAppVer2
//
//  Created by M.O on 2021/05/01.
//  Copyright © 2021年 M.O. All rights reserved.
//

import Foundation

class CityModel {
    let code: String
    let name: String
    
    init(cityCode:String, cityName:String) {
        code = cityCode
        name = cityName
    }
}
