//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Eremej Sumcenko on 16.02.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    private var bmi: BMI = BMI(bmiValue: 0)
    private var tip: String = ""
    
    private let formatter = NumberFormatter()
    
    var bmiValue: BMI? {
        get {
            return bmi
        }
        set {
            bmi = newValue ?? BMI(bmiValue: 0)
            //resultLabel.text = formatter.string(from: NSNumber(value: bmi))
        }
    }
    
    var tipValue: String? {
        get {
            return tip
        } set {
            tip = newValue ?? ""
            //tipLabel.text = tip
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        resultLabel.text = formatter.string(from: NSNumber(value: bmi.bmi))
        tipLabel.text = tip
        view.backgroundColor = ColorPresenter().getColor(from: bmi)
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
