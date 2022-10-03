//
//  StatisticModel.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 04/10/2022.
//

import Foundation

struct StatisticModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percetageChange: Double?
    
    init(title: String, value: String,percetageChange: Double? = nil){
        self.title = title
        self.value = value
        self.percetageChange = percetageChange
    }
    
}
