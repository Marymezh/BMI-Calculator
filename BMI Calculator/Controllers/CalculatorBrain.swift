//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Maria Mezhova on 22.09.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    func getBMIValue() -> String {
        let bmiRounded = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiRounded
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if  bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight, eat more!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You are great!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else if bmiValue < 29 {
            bmi = BMI(value: bmiValue, advice: "You are slightly overweight, rewise your diet!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        } else if bmiValue < 39 {
            bmi = BMI(value: bmiValue, advice: "You are obese, rewise your diet!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You are extremely obese! How come you've end up like this???", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
