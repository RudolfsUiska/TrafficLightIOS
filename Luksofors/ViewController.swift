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
    @IBOutlet weak var trafficLight: UIView!
    
    override func viewDidLoad() {
        self.trafficLight.layer.cornerRadius = self.trafficLight.frame.size.width / 2
        self.trafficLight.layer.borderWidth = 1
        self.trafficLight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        super.viewDidLoad()
        txtBox.text = "Yaaa Yeeet 😅"
        trafficLight.backgroundColor = #colorLiteral(red: 1, green: 0.2501971126, blue: 0.2930140495, alpha: 1)
    }
    @IBAction func btnYeet(_ sender: UIButton) {
        
       
        if txtBox.text == "Naaa yeet'nt 😞"{
            
            txtBox.text = "Yaaa Yeeet 😅"
            trafficLight.backgroundColor = #colorLiteral(red: 1, green: 0.2501971126, blue: 0.2930140495, alpha: 1)
        }
        else {
            txtBox.text = "Naaa yeet'nt 😞"
            trafficLight.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        }
        
    }
    
   
    @IBAction func timePicker(_ sender: UIDatePicker) {
        print(sender.date)
        let myTimeStamp = sender.date.timeIntervalSince1970
        print(myTimeStamp)
       // let dateFormatter = DateFormatter()
       // dateFormatter.dateFormat = "MMM dd, YYYY"
        
        //let somedateString = dateFormatter.string(from: sender.date)
        
        ///print(somedateString)  // "somedateString" is your string date
        
    }
    
    
    
}

