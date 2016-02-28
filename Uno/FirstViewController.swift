//
//  FirstViewController.swift
//  Uno
//
//  Created by hanpetern on 2/7/16.
//  Copyright © 2016 Nicholas Hanpeter. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // set up buttons
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    var startButtonState = 1
    
    // set up timer
    var timer = NSTimer()
    var counter = 0
    var startTime = NSTimeInterval()
    @IBOutlet var timeCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let strCounter = String(format: "%02d:%02d:%02d", counter, counter, counter)
        timeCounter.text = String(strCounter)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // count time
    func updateTime() {
        let currentTime = NSDate.timeIntervalSinceReferenceDate()
        var elapsedTime: NSTimeInterval = currentTime - startTime
        let minutes = UInt8(elapsedTime / 60)
        elapsedTime -= (NSTimeInterval(minutes) * 60)
        let seconds = UInt8(elapsedTime)
        elapsedTime -= (NSTimeInterval(seconds))
        let milliseconds = UInt8(elapsedTime * 100)
        let stringMinutes = String(format: "%02d", minutes)
        let stringSeconds = String(format: "%02d", seconds)
        let stringMilliseconds = String(format: "%02d", milliseconds)
        timeCounter.text = "\(stringMinutes):\(stringSeconds):\(stringMilliseconds)"
    }
    
    @IBAction func activityToggle(sender: UIButton) {
        if startButtonState == 1 {
            startButtonState = 2
            let aSelector : Selector = "updateTime"
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: aSelector, userInfo: nil, repeats: true)
            startTime = NSDate.timeIntervalSinceReferenceDate()
            startButton.setTitle("Pause", forState: UIControlState.Normal)
        } else {
            startButtonState = 1
            timer.invalidate()
            startButton.setTitle("Start", forState: UIControlState.Normal)
        }
    }
    
    @IBAction func activityStop(sender: UIButton) {
        timer.invalidate()
        counter = 0
        timeCounter.text = String(counter)
        startButtonState = 1
        startButton.setTitle("Start", forState: UIControlState.Normal)
    }
}

