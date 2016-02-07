//
//  SecondViewController.swift
//  Tabbed-App
//
//  Created by Jason Noble on 2/6/16.
//  Copyright © 2016 Jason Noble. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var temperatureTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultsLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetButtonTouched(sender: UIButton) {
        temperatureTextField.resignFirstResponder()
        resultsLabel.text = ""
        temperatureTextField.text = ""
    }
    @IBAction func convertButtonTouched(sender: UIButton) {
        temperatureTextField.resignFirstResponder()
        if let temperatureInF = Double(temperatureTextField.text!) {
            let temperatureInC = (temperatureInF - 32) * 5 / 9
            resultsLabel.text = "\(temperatureInF) ℉ is \(temperatureInC) ℃"
        } else {
            resultsLabel.text = "Please enter a valid decimal number"
        }
    }

}

