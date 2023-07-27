//
//  ViewController.swift
//  stepper
//
//  Created by Siddharth Dave on 18/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        slider.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperAction(_ sender: Any) {
        slider.isHidden = false
        slider.value = Float(stepper.value)
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        stepper.value = Double(slider.value)
    }
}

