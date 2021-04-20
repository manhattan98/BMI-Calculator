//
//  BMI.swift
//  BMI Calculator
//
//  Created by Eremej Sumcenko on 16.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

/**
 Pure representation of bmi. Contains actual bmi value and appropriate category
 */
struct BMI {
    enum Categoty {
        case Underweight
        case Normal
        case Overweight
    }
    
    let bmi: Float
    let category: Categoty
    
    init(bmiValue: Float) {
        bmi = bmiValue
        
        if bmi < 18.5 {
            category = .Underweight
        } else if bmi < 25 {
            category = .Normal
        } else {
            category = .Overweight
        }
    }
    init (height: Float, weight: Float) {
        self.init(bmiValue: weight / powf(height, 2.0))
    }

}
