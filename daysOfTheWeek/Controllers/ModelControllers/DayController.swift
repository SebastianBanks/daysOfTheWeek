//
//  DayController.swift
//  daysOfTheWeek
//
//  Created by Sebastian Banks on 3/17/22.
//

import Foundation

class DayController {
    
    // Source of truth (SOT)
    static var daysOfTheWeek: [Day] {
        let sun = Day(name: "Sunday", origin: "Added to the roman calendar by Emperor Constantine.")
        let mon = Day(name: "Monday", origin: "Added to the roman calendar by Emperor Constantine.")
        let tues = Day(name: "Tuesday", origin: "Tuesday comes from Tiu, or Tiw, the Anglo-Saxon name for Tyr, the Norse god of war.")
        let wed = Day(name: "Wednesday", origin: "Odin, also known as Woden, the supreme diety whom Wednesday was named")
        let thur = Day(name: "Thursday", origin: "Originates form Thor, the Norse god of thunder")
        let fri = Day(name: "Friday", origin: "Derived from Frigga, the wife of Oden, representing beauty.")
        let sat = Day(name: "Saturday", origin: "Saturn, the Roman god of fun and feasting.")
        
        return [sun, mon, tues, wed, thur, fri, sat]
    }
    
    
    
}
