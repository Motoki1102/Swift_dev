//
//  ViewController.swift
//  UIImageStudy
//
//  Created by Motoki Onayama on 2021/05/28.
//

import UIKit
 
class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1. UIImageに画像を載せる方法
        /*
        let sampleImage = UIImage(named: "visual_1b.jpeg")
        image.image = sampleImage
        */
        //2. 背景に画像を載せる方法
        // 画像を設定
        
        let widthSize = UIScreen.main.bounds.size.width // 画面の横の大きさを取得
        let heightSize = UIScreen.main.bounds.size.height // 画面の縦の大きさを取得
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: widthSize, height: heightSize)) // 背景画像の大きさを設定
        imageViewBackground.image = UIImage(named: "visual_1b.jpeg") // 画像を設定
        self.view.addSubview(imageViewBackground) // 背景画像を追加する
        
        //横（縦）に合わせて表示する
        /*
        let widthSize = UIScreen.main.bounds.size.width // 画面の横の大きさを取得
        let heightSize = UIScreen.main.bounds.size.height // 画面の縦の大きさを取得
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: (heightSize - widthSize) / 2, width: widthSize, height: widthSize)) // 背景画像の大きさを設定
        imageViewBackground.image = UIImage(named: "visual_1b.jpeg") // 画像を設定
        self.view.addSubview(imageViewBackground) // 背景画像を追加する
        */
    }
}
