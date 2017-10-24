//
//  ViewController.swift
//  PitchPerfect
//
//  Created by xengar on 2017-10-18.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecording: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecording.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Inside viewWillAppear func")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        //print("Audio button pressed")
        recordingLabel.text = "Recording in progress..."
        stopRecording.isEnabled = true
        recordingButton.isEnabled = false
        // TODO: Figure out why it doesn't get dissabled.
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        //print("Stop recording button pressed")
        recordingLabel.text = "Tap to record"
        stopRecording.isEnabled = false
        recordingButton.isEnabled = true
    }
}

