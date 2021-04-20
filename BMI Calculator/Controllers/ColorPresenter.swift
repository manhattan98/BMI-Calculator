//
//  ColorPresenter.swift
//  BMI Calculator
//
//  Created by Eremej Sumcenko on 17.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ColorPresenter {
    func getColor(from bmi: BMI) -> UIColor {
        switch bmi.category {
        case .Underweight:
            return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case .Normal:
            return #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        case .Overweight:
            return #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
    }
}
