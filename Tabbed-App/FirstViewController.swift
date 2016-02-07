//
//  FirstViewController.swift
//  Tabbed-App
//
//  Created by Jason Noble on 2/6/16.
//  Copyright © 2016 Jason Noble. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

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
        if let temperatureInC = Double(temperatureTextField.text!) {
            let temperatureInF = temperatureInC * 9 / 5 + 32
            resultsLabel.text = "\(temperatureInC) ℃ is \(temperatureInF) ℉"
        } else {
            resultsLabel.text = "Please enter a valid decimal number"
        }
    }

}

