//
//  Workout.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import Foundation

class Workout {
    
    var name: String
    var dateOfLastWorkout: Date?
    var exercises: [Exercise] = [Exercise]()
    
    init(name: String) {
        self.name = name
    }
    
    init(){
        name = ""
    }
    
    public var description: String {
        return "Workout - name: [\(self.name)], date: [\(String(describing: self.dateOfLastWorkout))]"
    }
    
}
