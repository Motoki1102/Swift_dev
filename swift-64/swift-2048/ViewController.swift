//
//  ViewController.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit
import AVKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    }
    @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 8, threshold: 64)
    self.present(game, animated: true, completion: nil)
    }
    @IBAction func startGameButtonTapped1(_ sender : UIButton) {
        let game = NumberTileGameViewController(dimension: 3, threshold: 64)
        self.present(game, animated: true, completion: nil)
    }
    @IBAction func startGameButtonTapped2(_ sender : UIButton) {
        let game = NumberTileGameViewController(dimension: 6, threshold: 64)
        self.present(game, animated: true, completion: nil)
    }
    
    var counter = 0
    
    @IBAction func move1(_ sender: Any) {
        
        counter = 0
        print(counter)
        
        if counter == 1{
            self.performSegue(withIdentifier: "tofirst", sender: nil)
            counter = 0
           self.performSegue(withIdentifier: "先ほど名づけたsegueのidentifier", sender: nil)
            
        }
    }
    
    @IBAction func move2(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        _ = storyboard.instantiateViewController(withIdentifier: "second")
        self.dismiss(animated: true, completion: nil)
        
    }
    func playMovieFromUrl(movieUrl: URL?) {
        if let movieUrl = movieUrl {
            let videoPlayer = AVPlayer(url: movieUrl)
            let playerController = AVPlayerViewController()
            playerController.player = videoPlayer
            self.present(playerController, animated: true, completion: {
                videoPlayer.play()
            })
        } else {
            print("cannot play")
        }
    }
    
    func playMovieFromPath(moviePath: String?) {
        if let moviePath = moviePath {
            self.playMovieFromUrl(movieUrl: URL(fileURLWithPath: moviePath))
        } else {
            print("no such file")
        }
    }
    
    let bundleDataName: String = "マイムービー"
    let bundleDataType: String = "mp4"
    
    @IBAction func playMovieFromBundleFile() {
        //MovieApp_iOS -> Build Phases -> Copy Bundle Resources 内にbundle.mp4を追加
        let moviePath: String? = Bundle.main.path(forResource: bundleDataName, ofType: bundleDataType)
        playMovieFromPath(moviePath: moviePath)
    }
}
