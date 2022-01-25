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
    
    // Dismiss keyboard when done
    func dismissInputKeyboard() {
        InputTextField.resignFirstResponder()
    }
    
    // User press return key to dismiss
    @IBAction func InputTextFieldReturnKey(_ sender: Any) {
        print("Keyboard return key pressed.")
        dismissInputKeyboard()
    }
    
    // User press button to change text
    @IBAction func ChangeTextButtonPress(_ sender: Any) {
        print("Change Text button pressed.")
        
        // If input field empty, change text to 'bye'
        if InputTextField.text == "" {
            ChangeTextLabel.text = "Goodbye! 👋"
            dismissInputKeyboard()
        }
        // If not empty, change text to content within input field and reset
        else {
            ChangeTextLabel.text = InputTextField.text
            InputTextField.text = ""
            dismissInputKeyboard()
        }
    }
    
    // User tap background to change text back to 'hello'
    @IBAction func BackgroundViewTap(_ sender: Any) {
        print("Background View tapped.")
        
        ChangeTextLabel.text = "Hello from Joon!"
        dismissInputKeyboard()
    }
    
    // User toggle on and off dark mode
    @IBAction func DarkModeSwitchToggle(_ sender: Any) {
        
        // If darkModeState true, set to false and change background color to blue
        if darkModeState {
            print("Dark Mode Switch toggled off.")
            darkModeState = false
            DarkModeSwitch.backgroundColor = UIColor.systemBlue
            BackgroundView.backgroundColor = UIColor.systemBlue
            ChangeTextLabel.textColor = UIColor.white
        }
        // If darkModeState false, set to true and change background color to black
        else {
            print("Dark Mode Switch toggled on.")
            darkModeState = true
            DarkModeSwitch.backgroundColor = UIColor.black
            BackgroundView.backgroundColor = UIColor.black
            ChangeTextLabel.textColor = UIColor.green
        }
    }
}
