//
//  ViewController.swift
//  SelfCamera
//
//  Created by M.O on 2021/04/24.
//  Copyright © 2021年 M.O. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate ,UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var PhotoImage: UIImageView!
    
    @IBAction func TakeAction(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let ipc = UIImagePickerController()
            ipc.sourceType = .camera
            ipc.delegate = self
            present(ipc, animated: true, completion: nil)
        }
    }
    
    @IBAction func SharedSNS(_ sender: Any) {
        if let SharedImage = PhotoImage.image {
            let SharedItems = [SharedImage]
            let controller = UIActivityViewController(activityItems: SharedItems, applicationActivities: nil)
            controller.popoverPresentationController?.sourceView = view
            present(controller, animated: true, completion: nil)
        }
    }
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        PhotoImage.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}

