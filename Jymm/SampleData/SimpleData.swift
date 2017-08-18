//
//  SimpleData.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import Foundation

class SimpleData{
    
    private static var wasInitialized: Bool = false
    private static var workouts: [Workout] = [Workout]()
    
    static func getData() -> [Workout]{
        if !wasInitialized {
            initialize()
        }
        return workouts
    }
    
    static func initialize(){
        let workout1 = Workout(name: "B Polish horse workout")
        let workout2 = Workout(name: "A Ukrainian horse workout")
        workouts.append(contentsOf: [workout1, workout2])
    }
    
}
