//
//  SwitchViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit

class SwitchViewController: UIViewController {
    lazy var nativeSwitch: UISwitch = {
       let mySwitch = UISwitch()
        mySwitch.isOn = false
        mySwitch.tintColor = .red
        mySwitch.thumbTintColor = .gray
        mySwitch.onTintColor = .green
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mySwitch)
        return mySwitch
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            nativeSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nativeSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
}

#Preview {
    SwitchViewController()
}
