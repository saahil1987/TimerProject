//
//  ViewController.swift
//  TimerProject
//
//  Created by Saahil Kaushal on 04/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timerLabel: UILabel!
    var timer : Timer?
    var countDown = 600
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(clicked), userInfo: nil, repeats: true)

    }
    @objc func clicked(){
        countDown -= 1
        let hours = Int(countDown) / 3600
        let minutes = Int(countDown) / 60 % 60
        let seconds = Int(countDown) % 60
        let timer1 = "\(minutes) : \(seconds)"
        //return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
        timerLabel.text = timer1
        
        if countDown == 0{
            timer?.invalidate()
        }
        
    }

}



