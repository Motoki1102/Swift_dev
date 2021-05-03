//
//  ViewController.swift
//  WeatherClient
//
//  Created by M.O on 2021/04/29.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url: URL = URL(string: "https://dark-sky.p.rapidapi.com/-74,42?lang=en&units=auto")!
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
            do{
                let couponData = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String: Any]
                print(couponData) // Jsonの中身を表示
            }
            catch {
                print(error)
            }
            
            // コンソールに出力
            print("data: \(String(describing: data))")
            print("response: \(String(describing: response))")
            print("error: \(String(describing: error))")
        })
        task.resume()
    }


}

