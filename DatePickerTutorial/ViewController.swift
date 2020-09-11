//
//  ViewController.swift
//  DatePickerTutorial
//
//  Created by José Henrique Fernandes Silva on 09/09/20.
//  Copyright © 2020 José Henrique Fernandes Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        formatter.dateFormat = "dd/MM/yyyy"
        
        dateLabel.text = formatter.string(from: self.datePicker.date)
    }

    @IBAction func datePickerSelected(_ sender: Any) {
        dateLabel.text = formatter.string(from: self.datePicker.date)
    }
    
    
}

