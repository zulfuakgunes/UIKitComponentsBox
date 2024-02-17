//
//  ColorWellViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 17.02.2024.
//

import UIKit
class ColorWellViewController: UIViewController {
    lazy var nativeColorWell: UIColorWell = {
        let colorWell = UIColorWell()
        
        colorWell.title = "Select Color"
        colorWell.supportsAlpha = true
        colorWell.selectedColor = .blue
        colorWell.addTarget(self, action: #selector(colorDidChange(_:)), for: .valueChanged)
        
        colorWell.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(colorWell)
        return colorWell
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            nativeColorWell.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nativeColorWell.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                ])

    }
    
    @objc func colorDidChange(_ sender: UIColorWell) {
        view.backgroundColor = sender.selectedColor
    }
}

#Preview {
    ColorWellViewController()
}
