//
//  ButtonViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 15.02.2024.
//

import UIKit

class ButtonViewController: UIViewController {
    lazy var nativeButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(
            self,
            action: #selector(
                buttonTapped
            ),
            for: .touchUpInside
        )
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }()
    
    @objc func buttonTapped() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
