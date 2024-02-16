//
//  SliderViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class SliderViewController: UIViewController {
    lazy var nativeSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50

        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .yellow
        slider.thumbTintColor = .black
        
        slider.addTarget(self , action: #selector(sliderValueChange(_:)), for: .valueChanged)
        slider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(slider)
        return slider
    }()
    
    @objc func sliderValueChange(_ sender: UISlider) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSlider()
    }
    
    func setupSlider() {
        // Auto Layout kısıtlamaları ile slider'ı konumlandırma
        NSLayoutConstraint.activate([
            nativeSlider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nativeSlider.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nativeSlider.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
}

#Preview {
    SliderViewController()
}
