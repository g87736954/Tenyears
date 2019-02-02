//
//  ViewController.swift
//  Tenyears
//
//  Created by User on 2019/2/1.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearslider: UISlider!
    @IBOutlet weak var beforepic: UIImageView!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var ageyear: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
//        ageyear.text=String(Int(yearslider.value))
        let time = DateFormatter()
        time.dateFormat = "yyyy"
        let y = time.string(from: date.date)
        ageyear.text=String(y)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func yearslider(_ sender: Any) {
        let dateValue = DateFormatter()
        dateValue.dateFormat = "YYYY"
        yearslider.value = Float (dateValue.string(from: date.date))!
        
        beforepic.image = UIImage(named: "\(Int(yearslider.value)).jpg")
        ageyear.text = String(Int(yearslider.value))
        
        
        
    }
    
    @IBAction func datepick(_ sender: Any) {
        let dateValue = DateFormatter()
        dateValue.dateFormat = "YYYY"
        let y = dateValue.string(from: date.date)
        beforepic.image = UIImage(named: "\(String(y)).jpg")
        ageyear.text = String(y)  }
    
}

