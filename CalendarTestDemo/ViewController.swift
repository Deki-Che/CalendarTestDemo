//
//  ViewController.swift
//  CalendarTestDemo
//
//  Created by Deki on 15/11/11.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit
import CalendarView
import SwiftMoment

class ViewController: UIViewController , CalendarViewDelegate{

    @IBOutlet weak var calendar: CalendarView!
    
    @IBOutlet weak var monthYear: UILabel!
    var date:Moment! {
        didSet {
            title = date.format("MMMM d, yyyy")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date = moment()
        calendar.delegate = self
    }
    
    func calendarDidSelectDate(date: Moment) {
        self.date = date
        print("点击的 \(self.date)")
        self.monthYear.text = "\(self.date)"
    }
    
    func calendarDidPageToDate(date: Moment) {
        self.date = date
        print(self.title!)
        self.monthYear.text = self.title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

