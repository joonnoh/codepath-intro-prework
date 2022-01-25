//
//  ViewController.swift
//  Prework for CodePath Intro to Mobile App Development (Spring 2022)
//  Created by Joon Noh on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var BackgroundView: UIView!
    
    @IBOutlet weak var InputTextField: UITextField!
    
    @IBOutlet weak var ChangeTextLabel: UILabel!
    
    @IBOutlet weak var DarkModeSwitch: UISwitch!
    
    // Remember dark mode state for toggling on and off
    var darkModeState: Bool = false
    
    // User press button to change text
    @IBAction func ChangeTextButtonPress(_ sender: Any) {
        print("Change Text button pressed.")
        
        // If input field empty, change text to 'bye'
        if InputTextField.text == "" {
            ChangeTextLabel.text = "Goodbye! 👋"
            InputTextField.resignFirstResponder()
        }
        // If not empty, change text to content within input field and reset
        else {
            ChangeTextLabel.text = InputTextField.text
            InputTextField.text = ""
            InputTextField.resignFirstResponder()
        }
    }
    
    // User tap background to change text back to 'hello'
    @IBAction func BackgroundViewTap(_ sender: Any) {
        print("Background View tapped.")
        
        ChangeTextLabel.text = "Hello from Joon!"
        InputTextField.resignFirstResponder()
    }
    
    // User toggle on and off dark mode
    @IBAction func DarkModeSwitchToggle(_ sender: Any) {
        
        // If darkModeState true, set to false and change background color to blue
        if darkModeState {
            darkModeState = false
            print("Dark Mode Switch toggled off.")
            DarkModeSwitch.backgroundColor = UIColor.systemBlue
            BackgroundView.backgroundColor = UIColor.systemBlue
        }
        // If darkModeState false, set to true and change background color to black
        else {
            darkModeState = true
            print("Dark Mode Switch toggled on.")
            DarkModeSwitch.backgroundColor = UIColor.black
            BackgroundView.backgroundColor = UIColor.black
        }
    }
}
