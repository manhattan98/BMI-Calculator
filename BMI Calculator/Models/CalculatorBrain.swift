//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eremej Sumcenko on 16.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    public var heightValue: Float?
    public var weightValue: Float?
    
    public var bmiValue: BMI? {
        get {
            if let safeHeight = heightValue, let safeWeight = weightValue {
                return BMI(height: safeHeight, weight: safeWeight)
            }
            return nil
        }
    }
    
    public var tipValue: String? {
        get {
            switch bmiValue?.category {
            case .Underweight:
                return "Eat more pies!"
            case .Normal:
                return "Fit as a fiddle!"
            case .Overweight:
                return "Eat less pies!"
            case nil:
                return nil
            }
        }
    }

    init() {
        heightValue = nil
        weightValue = nil
    }
    init(heightValue: Float, weightValue: Float) {
        self.heightValue = heightValue
        self.weightValue = weightValue
    }
    
}
