//
//  WorkoutViewController.swift
//  Jymm
//
//  Created by Andrew Torski on 18/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import UIKit

class WorkoutDetailsViewController: UIViewController {

    //MARK: - Props
    @IBOutlet weak var workoutNameLabel: UILabel!
    @IBOutlet weak var lastWorkoutLabel: UILabel!
    
    var workout: Workout?
    
//    MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let workout = workout {
            workoutNameLabel.text = workout.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
    }
    

}
