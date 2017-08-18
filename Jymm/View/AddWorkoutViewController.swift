//
//  AddWorkoutViewController.swift
//  Jymm
//
//  Created by Andrew Torski on 18/08/2017.
//  Copyright © 2017 Andrew Torski. All rights reserved.
//

import UIKit

class AddWorkoutViewController: UIViewController, UITextFieldDelegate {

    //MARK: props
    
    @IBOutlet weak var workoutNameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var workout: Workout?
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.workoutNameTextField.becomeFirstResponder()
        self.workoutNameTextField.delegate = self
        updateSaveButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: action
    
    @IBAction func primaryActionTriggeredAction(
        _ sender: UITextField, forEvent event: UIEvent) {
        print("primaryActionTriggeredAction")
    }
    
    @IBAction func workoutNameTextFieldEeditingChangedAction(_ sender: Any) {
        updateSaveButton()
    }
    
    // MARK: - Navigation
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        print("cancelAction")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        print("saveAction")
//        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        print("prepare")
        self.workout = Workout(name: self.workoutNameTextField.text!)
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.performSegue(withIdentifier: "UnwindToWorkouts", sender: workoutNameTextField)
        return true
    }
    
    //MARK: private funcs
    
    private func updateSaveButton(){
        let text = workoutNameTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
}
