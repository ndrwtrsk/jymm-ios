//
//  ExerciseSet.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import Foundation

class ExerciseInstanceSet {
    
    var numberOfReps: Int
    var weightInKgs: Int?
    
    init(numberOfReps: Int, weightInKgs: Int){
        self.numberOfReps = numberOfReps
        self.weightInKgs = weightInKgs
    }
    
    init(numberOfReps:Int){
        self.numberOfReps = numberOfReps
    }
    
}
