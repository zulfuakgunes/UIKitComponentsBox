//
//  ProgressViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class ProgressViewController: UIViewController {
    lazy var nativeProgrressView: UIProgressView = {
        let progrressView = UIProgressView()
        
        progrressView.progress = 0.0
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
        
        progrressView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(progrressView)
        return progrressView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            nativeProgrressView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nativeProgrressView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nativeProgrressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nativeProgrressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func updateProgress() {
        nativeProgrressView.progress += 0.1
        if nativeProgrressView.progress >= 1.0 {
            nativeProgrressView.progress = 1.0
        }
    }
}

#Preview {
    ProgressViewController()
}
