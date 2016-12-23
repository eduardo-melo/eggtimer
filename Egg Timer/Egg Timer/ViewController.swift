//
//  ViewController.swift
//  Egg Timer
//
//  Created by Eduardo Melo on 23/12/16.
//  Copyright © 2016 Eduardo Melo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer();
    var time = 210;
    
    func decreaseTimer(){
        if (time > 0){
            time = time - 1;
            timeLabel.text = String(time);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate();
    }
    
    @IBAction func minusTenTapped(_ sender: Any) {
        if (time >= 10) {
            time = time - 10;
        } else {
            time = 0;
        }
        
        timeLabel.text = String(time);
    }
    
    @IBAction func plusTenTapped(_ sender: Any) {
        time = time + 10;
        timeLabel.text = String(time);
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        time = 210;
        timeLabel.text = String(time);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

