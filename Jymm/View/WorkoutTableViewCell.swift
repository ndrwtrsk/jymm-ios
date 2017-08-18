//
//  WorkoutTableViewCell.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell {

    //MARK: Props
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastWorkoutLabel: UILabel!
    
    func initializeFromWorkout(workout: Workout){
        nameLabel.text = workout.name
        lastWorkoutLabel.text = workout.dateOfLastWorkout?.description ?? ""
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
