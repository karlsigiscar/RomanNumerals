//
//  ViewController.swift
//  RomanNumerals
//
//  Created by Karl Sigiscar on 9/27/18.
//  Copyright © 2018 Karl Sigiscar. All rights reserved.
//

import Cocoa


class ViewController: NSViewController, NSTextFieldDelegate {
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var convertedTextField: NSTextField!
    @IBOutlet weak var convertButton: NSButton!
    
    let viewModel = ViewModel()
    
    @IBAction func buttonActionHandler(_ sender: Any) {
        convert()
    }
    
    @IBAction func textFieldActionHandler(_ sender: Any) {
        convert()
    }
    
    func convert() {
        let number:Int = textField.integerValue
        if number == 0 {
            convertedTextField.stringValue = "Please, only enter numerical values"
            convertedTextField.textColor = NSColor.red
        } else if number > 10000 {
            convertedTextField.stringValue = "Enter a number up to 10000"
            convertedTextField.textColor = NSColor.red
        } else {
            convertedTextField.stringValue = viewModel.convert(number: number)
            convertedTextField.textColor = NSColor.white
        }
    }
}
