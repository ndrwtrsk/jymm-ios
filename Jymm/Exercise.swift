//
//  Exercise.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import Foundation

class Exercise {
    
    var name: String
    var exerciseInstances: [ExerciseInstance] = [ExerciseInstance]()
    
    init(name: String) {
        self.name = name
    }
    
}
