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
    @IBOutlet weak var clearButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convertTemp(sender: UIButton) {
        if fahrenheitTextField.text == "" && celsiusTextField.text == ""{
            fahrenheitTextField.text = "0"
            celsiusTextField.text = "0"
            print("both fahrenheit and celsius are zero")
        }else if fahrenheitTextField.text != "" && celsiusTextField.text == ""{
            print("Convert fahrenheit to celsius")
            //let value = Int(fahrenheitTextField.text ?? "") ?? 0
            //example of optionals
            if let textValue = fahrenheitTextField.text{
                print("have text value")
                if let intValue = Float(textValue){
                    print("Have int value")
                    let convertedCelsiusValue = convertToCelsius(fahrenheit: intValue)
                    celsiusTextField.text = String(convertedCelsiusValue)
                } else {
                    print("Have no value")
                }
            } else {
                print ("nil text value")
            }
            
        }else if fahrenheitTextField.text == "" && celsiusTextField.text != ""{
            print("Convert celsius to fahrenheit")
            let value = Float(celsiusTextField.text ?? "") ?? 0
            let convertedFahrenheitValue = convertToFahrenheit(celsius: value)
            fahrenheitTextField.text = String(convertedFahrenheitValue)
            
        }else if fahrenheitTextField.text != "" && celsiusTextField.text != ""{
            fahrenheitTextField.text = ""
            celsiusTextField.text = ""
            print("both fahrenheit and celsius are NOT zero")
        }
    }
    
    @IBAction func clearFields(sender: UIButton) {
        fahrenheitTextField.text = ""
        celsiusTextField.text = ""
        print("both fahrenheit and celsius cleared")
    }
    
    func convertToCelsius(fahrenheit: Float) -> Float{
        return Float(5/9 * ((Float(fahrenheit) - 32)))
    }
    
    func convertToFahrenheit(celsius: Float) -> Float{
        return Float((9/5 * (Float(celsius))) + 32)
    }
}

