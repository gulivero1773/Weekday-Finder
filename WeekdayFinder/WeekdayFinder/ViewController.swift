//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Mykola Buhaiov on 22.02.2020.
//  Copyright © 2020 Mykola Buhaiov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findWeekDay () {
        
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        if let day = dateTF.text, let month = monthTF.text, let year = yearTF.text{
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
            guard let date = calendar.date(from: dateComponents) else {return}
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday
        
    }
    
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

}
