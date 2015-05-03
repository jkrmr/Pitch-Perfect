//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jake Romer on 5/2/15.
//  Copyright (c) 2015 jkrmr.io. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")

        if filePath != nil {
            let fileUrl = NSURL.fileURLWithPath(filePath!)
            audioPlayer = AVAudioPlayer(contentsOfURL: fileUrl, error: nil)
            audioPlayer.enableRate = true
        } else {
            println("The filepath is empty")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSlowAudio(sender: AnyObject) {
        audioPlayer.rate = 0.5
        audioPlayer.stop()
        audioPlayer.play()
    }

    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.rate = 1.5
        audioPlayer.stop()
        audioPlayer.play()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
