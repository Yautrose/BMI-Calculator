import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
//        let advice: String
//        let color: UIColor

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .systemBlue)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .systemRed)
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .systemGreen)
        }
       
    }
    
    func getAdvice() -> String {
        let safeAdvice = bmi?.advice ?? "No recomendation."
        return safeAdvice
    }
    
    func getColor() -> UIColor {
        let safeColor = bmi?.color ?? .black
        return safeColor
    }
    
    mutating func getBMIValue() -> String {
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
}
