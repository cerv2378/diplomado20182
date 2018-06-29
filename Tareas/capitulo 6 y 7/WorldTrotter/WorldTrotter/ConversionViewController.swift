//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by RV2368 on 09/03/18.
//  Copyright © 2018 RV2368. All rights reserved.
//

//import Foundation

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    var fahrenheitValue: Measurement<UnitTemperature>? { didSet {
        updateCelsiusLabel()
        }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil }
    }
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiousLabel.text = "\(celsiusValue.value)"
            celsiousLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celsiousLabel.text = "???"
        }
    }
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        //print("Current text: \(textField.text)")
        //print("Replacement text: \(string)")
        //return true
//        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
//        let replacementTextHasDecimalSeparator = string.range(of: ".")
        
        let currentLocale = Locale.current
        let decimalSeparator = currentLocale.decimalSeparator ?? "."
        let existingTextHasDecimalSeparator
            = textField.text?.range(of: decimalSeparator)
        let replacementTextHasDecimalSeparator = string.range(of: decimalSeparator)
        if existingTextHasDecimalSeparator != nil,
            replacementTextHasDecimalSeparator != nil {
            return false
        } else {
            return true }
        }

    
    @IBOutlet var celsiousLabel: UILabel!
    
   
    
    
   
    
    @IBOutlet var textField: UITextField!
    @IBAction func fahrenheitFielfEditingChanged(_ textField: UITextField) {
    //celsiousLabel.text = textfield.text
        
        //if let text = textField.text, !text.isEmpty {
        //    celsiousLabel.text = text
        //} else {
        //    celsiousLabel.text = "???"
        //}
//        if let text = textField.text, let value = Double(text) {
//            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        if let text = textField.text, let number = numberFormatter.number(from: text) {
            fahrenheitValue = Measurement(value: number.doubleValue, unit: .fahrenheit)
        
        } else {
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
  
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelsiusLabel()
        
        print("ConversionViewController loaded its view.")
    }

    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf }()


}
