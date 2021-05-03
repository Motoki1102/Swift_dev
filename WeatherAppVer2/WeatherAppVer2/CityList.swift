//
//  CityList.swift
//  WeatherAppVer2
//
//  Created by M.O on 2021/05/01.
//  Copyright © 2021年 M.O. All rights reserved.
//

import Foundation

class CityList {
    var list = [CityModel]()
    
    init() {
        list.append(CityModel(cityCode:"016010", cityName:"札幌"))
        list.append(CityModel(cityCode:"015010", cityName:"室蘭"))
        list.append(CityModel(cityCode:"040010", cityName:"仙台"))
        list.append(CityModel(cityCode:"110010", cityName:"埼玉"))
        list.append(CityModel(cityCode:"130010", cityName:"東京"))
        list.append(CityModel(cityCode:"140010", cityName:"横浜"))
    }
    
}
