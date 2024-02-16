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
        
        /*
         slider.setThumbImage(UIImage(named: "customThumbImage"), for: .normal)
         slider.setMinimumTrackImage(UIImage(named: "customMinTrackImage"), for: .normal)
         slider.setMaximumTrackImage(UIImage(named: "customMaxTrackImage"), for: .normal)

         */

        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .yellow
        slider.thumbTintColor = .black
        
        slider.addTarget(self , action: #selector(sliderValueChange(_:)), for: .valueChanged)
        slider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(slider)
        return slider
    }()
    lazy var nativeLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Hello UIKit"
        label.textColor = .blue
        label.textAlignment = .center
        label.font = UIFont(name: "CustomFont", size: 20)
        label.numberOfLines = 0
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        return label
    }()
    
    @objc func sliderValueChange(_ sender: UISlider) {
        let step: Float = 1.0
        let roundedValue = round(sender.value / step) / step
        sender.value = roundedValue
        nativeLabel.text = "\(sender.value)"
        print("\(sender.value)")
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
            nativeSlider.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),

            
            nativeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            nativeLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nativeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70)

        ])
    }
}

#Preview {
    SliderViewController()
}
