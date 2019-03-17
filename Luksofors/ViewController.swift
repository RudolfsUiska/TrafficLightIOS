//
//  ViewController.swift
//  Luksofors
//
//  Created by Students on 26/02/2019.
//  Copyright © 2019 RudolfsUiska. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var txtBox: UILabel!
    @IBOutlet weak var currentTime: UILabel!
    @IBOutlet weak var trafficLight: UIView!
    let trafficLightAtTimes: [String] = [String]()
    var colorValue = 0
    var timer = Timer()
    override func viewDidLoad() {
        self.trafficLight.layer.cornerRadius = self.trafficLight.frame.size.width / 2
        self.trafficLight.layer.borderWidth = 1
        self.trafficLight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        super.viewDidLoad()
        txtBox.text = "Yaaa Yeeet 😅"
        trafficLight.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        
    }
    @objc func tick() {
        currentTime.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        //atkarīgs no tā vai telefonā iestādīts 12 vai 24 stundu laiks
    }
    func 🦀(){
        trafficLight.backgroundColor = #colorLiteral(red: 1, green: 0.2501971126, blue: 0.2930140495, alpha: 1)
        colorValue = 3
    }
    func 🌝(){
        trafficLight.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        colorValue = 2
    }
    func 🐸(){
        trafficLight.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        colorValue = 1
    }
    
    
    
    @IBAction func btnYeet(_ sender: UIButton) {
        
       
        if colorValue == 1{
            
            txtBox.text = "Yaaa Yeeet 😅"
        }
        else if colorValue == 2{
            txtBox.text = "😎😎😎"
        }
        else if colorValue == 3{
            txtBox.text = "Naaa yeet'nt 😞"
        }
    }
    
   
    @IBAction func timePicker(_ sender: UIDatePicker) {
        print(sender.date)
        let myTimeStamp = sender.date.timeIntervalSince1970
        print(myTimeStamp)
        let timeStampINT:Int = Int(myTimeStamp)
        let startTime = (timeStampINT-10800)%420
        print(startTime)
        if startTime <= 60 {
            🐸()
        }
        else if startTime == 120{
            🌝()
        }
        else if startTime > 120 && startTime < 360
        {
            🦀()
        }
        else if startTime == 360 {
            🌝()
        }

    }
    
}

