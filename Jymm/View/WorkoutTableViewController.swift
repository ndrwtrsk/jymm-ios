//
//  WorkoutTableViewController.swift
//  Jymm
//
//  Created by Andrew Torski on 15/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import UIKit
import os.log

class WorkoutTableViewController: UITableViewController {

    private var workouts: [Workout] = [Workout]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.workouts.append(contentsOf: SimpleData.getData().sorted(by: { $0.name < $1.name }))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Workout count: \(workouts.count)")
        return workouts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutTableViewCell", for: indexPath)
            as? WorkoutTableViewCell else {
            fatalError("The dequeued cell is not an instance of WorkoutTableViewCell.")
        }
        let workout = workouts[indexPath.row]
        cell.initializeFromWorkout(workout: workout)
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch(segue.identifier ?? ""){
        case "WorkoutDetailsSegue":
            prepareForWorkoutDetailsSegue(for: segue, sender: sender)
        default:
            print("prepare default")
        }
    }
    
    private func prepareForWorkoutDetailsSegue(for segue: UIStoryboardSegue,
                                               sender: Any?){
        print("prepareForWorkoutDetailsSegue")
        guard let cell = sender as? WorkoutTableViewCell else {
            fatalError("could not get cell")
        }
        guard let index = tableView.indexPath(for: cell) else {
            fatalError("cell is not visible")
        }
        let workout = workouts[index.row]
        guard let destination = segue.destination as? WorkoutDetailsViewController else {
            fatalError("wrong destination")
        }
        destination.workout = workout
    }
    
    @IBAction func unwindFromAddNewWorkout(sender: UIStoryboardSegue){
        if let sourceViewController = sender.source as? AddWorkoutViewController{
            let workout = sourceViewController.workout!
            print(workout.description)
            
            let newIndexPath = IndexPath(row: workouts.count, section: 0)
            
            self.workouts.append(workout)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}
