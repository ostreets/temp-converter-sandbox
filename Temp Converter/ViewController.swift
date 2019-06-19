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
        let fahrenheit = fahrenheitTextField.text
        let celsius = celsiusTextField.text
    
        if fahrenheitTextField.text == nil || celsiusTextField.text != "" {
            convertToFahrenheit(celsius: Int(celsius))
        }
        else if celsiusTextField.text == nil || fahrenheitTextField.text != ""{
            convertToCelcius(fahrenheit: Int(fahrenheit))
        }
    }
    
    func convertToCelcius(fahrenheit: Int) -> Int{
            return Int(5/9 * (Double(fahrenheit) - 32))
    }
    
    func convertToFahrenheit(celsius: Int) -> Int{
        return Int(5/9 * (Double(celsius)) + 32)
    }
}

