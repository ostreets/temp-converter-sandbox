//
//  ViewController.swift
//  Temp Converter
//
//  Created by Omar Calles on 6/12/19.
//  Copyright © 2019 Omar Calles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    @IBOutlet weak var celsiusTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func convertTemp(sender: UIButton) {
        NSLog("Tapped Button")
        fahrenheitTextField.text = "Temp!"
        celsiusTextField.text = " Convert!"
    }

}

