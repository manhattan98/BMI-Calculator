//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    private let heightFormatter = NumberFormatter()
    private let weightFormatter = NumberFormatter()
    
    private var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        heightFormatter.maximumFractionDigits = 2
        weightFormatter.maximumFractionDigits = 1
                
        initSlidersWithLabels(
            heightValue: (heightSlider.minimumValue + heightSlider.maximumValue) / 2,
            weightValue: (weightSlider.minimumValue + weightSlider.maximumValue) / 2
        )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let identifier = segue.identifier ?? ""
        
        switch identifier {
        case "calculateSegue":
            let resultVC = segue.destination as! ResultViewController
            
            resultVC.bmiValue = calculatorBrain.bmiValue
            resultVC.tipValue = calculatorBrain.tipValue
        default:
            print("unknown segue identifier: \(identifier)")
        }
    }
    
    func initSlidersWithLabels(heightValue: Float, weightValue: Float) {
        heightSlider.value = heightValue
        weightSlider.value = weightValue
        
        heightChanged(heightSlider)
        weightChanged(weightSlider)
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = heightFormatter.string(from: NSNumber(value: sender.value))
        calculatorBrain.heightValue = sender.value
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text = weightFormatter.string(from: NSNumber(value: sender.value))
        calculatorBrain.weightValue = sender.value
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "calculateSegue", sender: self)
    }

}

