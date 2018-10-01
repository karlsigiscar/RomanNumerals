//
//  ViewController.swift
//  RomanNumerals
//
//  Created by Karl Sigiscar on 9/27/18.
//  Copyright © 2018 Karl Sigiscar. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var convertedTextField: NSTextField!
    @IBOutlet weak var convertButton: NSButton!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Localize
    }
    
    @IBAction func convert(_ sender: Any) {
        let number:Int = textField.integerValue
        convertedTextField.stringValue = viewModel.convert(number: number)        
    }
}
