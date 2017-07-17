//
//  Day.swift
//  Lab6
//
//  Created by user128574 on 7/17/17.
//  Copyright © 2017 JTC. All rights reserved.
//

import Foundation

class  Day {
    
    var city : String?
    var condition : String?
    var temp : Int?
    var day : String?
    var highLow : (high: Int, low: Int)?
    var windSpeed : Int?
    var windDirecion : String?
    var probOfPrecipitation : Int?
    
    init(city: String?, condition: String?, temp: Int?, day: String?) {
        if let city = city {
            self.city = city
        }
        if let condition = condition {
            self.condition = condition
        }
        if let temp = temp {
            self.temp = temp
        }
        if let day = day {
            self.day = day
        }

    }
    
}
