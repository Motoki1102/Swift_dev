//
//  ViewController.swift
//  MyMovie
//
//  Created by M.O on 2021/04/25.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Videoimg: UIImageView!
    
    @IBAction func VideoAction(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
        let Videoimage = UIImagePickerController()
            Videoimage.sourceType = .camera
            Videoimage.cameraCaptureMode = .photo
            Videoimage.cameraCaptureMode = .video
            //Videoimage.sourceType = .photoLibrary
            Videoimage.delegate = self
            present(Videoimage, animated: true, completion: nil)
        }
    }
    
    @IBAction func SaveVideo(_ sender: Any) {
            let SaveItems = UIImagePickerController()
            SaveItems.sourceType = .savedPhotosAlbum
            SaveItems.delegate = self
            present(SaveItems, animated: true, completion: nil)
}
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        Videoimg.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}
