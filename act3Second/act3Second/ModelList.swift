//
//  ModelList.swift
//  act3Second
//
//  Created by seunghoria on 2023/06/05.
//

import SwiftUI

class ModelList: Identifiable, ObservableObject {
    let id = UUID()
    var date: Date
    var partOfDay : String
    var time : String
    @Published var isToggleOn : Bool
    
    init(date: Date) {
        let dateFormatter = DateFormatter()
        
        self.date = date
        
        dateFormatter.dateFormat = "a"
        partOfDay = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "h:mm"
        time = dateFormatter.string(from: date)
        
        isToggleOn = true
    }
    
    func updateDate(date: Date) {
        
        let dateFormatter = DateFormatter()
        
        self.date = date
        
        dateFormatter.dateFormat = "a"
        let updatedPartOfDay = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "h:mm"
        let updatedTime = dateFormatter.string(from: date)
        
        if updatedPartOfDay != partOfDay || updatedTime != time {
            isToggleOn = true
            partOfDay = updatedPartOfDay
            time = updatedTime
        }
        
        
    }
    
}









class Count: ObservableObject {
    @Published var firstNum: Int = 1
    @Published var secondNum: Int = 2

    func firstNumberAdd() {
        firstNum += 1
    }

    func secondNumberAdd() {
        secondNum += 1
    }
}


