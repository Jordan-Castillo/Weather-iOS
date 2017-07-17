//
//  ViewController.swift
//  Lab6
//
//  Created by user128574 on 7/17/17.
//  Copyright © 2017 JTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dayData : [Day] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dayData.append(Day(city: "Santa Maria", condition: "Sunny", temp: 69, day: "Monday"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! DayTVCell
        let thisDay = dayData[indexPath.row]
        
        cell.dayLabel.text = thisDay.day
        let forecast = "\(thisDay.temp ?? 0)"
        cell.forecastLabel.text = forecast
        
        cell.highLabel.text = ""
        cell.lowLabel.text = ""
        cell.precipitationLabel.text = "0"
        
        
        return cell
    }


}

