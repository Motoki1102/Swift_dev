//
//  ViewController.swift
//  WeatherAppVer2
//
//  Created by M.O on 2021/05/01.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pickView: UIPickerView!
    @IBOutlet weak var resultButton: UIButton!
    
    var cityData:[String] = ["016010", "札幌"]
    
    let cityList = CityList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
        pickView.delegate = self
        pickView.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityList.list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cityList.list[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cityData = [cityList.list[row].code,cityList.list[row].name]
    }
    
    @IBAction func resultButton(_ sender: Any) {
    performSegue(withIdentifier: "result", sender: nil)
}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.cityData = cityData
        }
    }
}
