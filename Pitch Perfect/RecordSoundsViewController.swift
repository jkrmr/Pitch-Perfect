//  RecordSoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jake Romer on 5/2/15.
//  Copyright (c) 2015 jkrmr.io. All rights reserved.

import UIKit

class RecordSoundsViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, 
        // typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
        println("recording audio")
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.hidden = true
        recordButton.enabled = true
        println("recording stopped")
    }
}

