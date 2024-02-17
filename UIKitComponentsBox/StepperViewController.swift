//
//  StepperViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 17.02.2024.
//

import UIKit

class StepperViewController: UIViewController {
     lazy var nativeStepper: UIStepper = {
        let stepper = UIStepper()
        
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.stepValue = 1
        stepper.value = 0
        stepper.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        
        view.addSubview(stepper)
        return stepper
    }()
    
    override func viewDidLoad() {
        nativeStepper.center = view.center
    }
    
    @objc func stepperValueChanged(_ sender: UIStepper) {
        print(sender.value)
    }
}

#Preview {
    StepperViewController()
}
