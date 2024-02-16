//
//  ButtonViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 15.02.2024.
//

import UIKit

class ButtonViewController: UIViewController {
    lazy var nativeButton: UIButton = {
    /*
     // Yeni bir UIButton örneği oluşturulur ve yapılandırması atanır.
     var config = UIButton.Configuration.filled()
     config.title = "Button"
     config.baseForegroundColor = .systemBlue

     let button = UIButton(configuration: config, primaryAction: nil)
     */
        
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
    
    lazy var nativeGrayButton: UIButton = {
        let button = UIButton(type: .system) // .system tipinde bir buton oluşturun.
        button.setTitle("Gri Buton", for: .normal) // Buton başlığını ayarlayın.
        button.backgroundColor = .systemGray // Butonun arka plan rengini gri yapın.
        button.setTitleColor(.white, for: .normal) // Başlık rengini beyaz yapın.
        button.layer.cornerRadius = 10 // Buton köşelerini yuvarlak yapın.
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        // Butona eylem ekleyin.
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var nativeConfigGrayButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Gri Buton"
        config.baseBackgroundColor = .systemGray // Butonun arka plan rengini gri yapın.
        config.baseForegroundColor = .white // Başlık rengini beyaz yapın.
        
        let button = UIButton(configuration: config, primaryAction: nil)
        button.layer.cornerRadius = 10 // Not: UIButton.Configuration ile köşe yuvarlaklığını ayarlamak için farklı bir yaklaşım gerekebilir.
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        // Eylemi addAction ile ekleyin (iOS 14+).
        button.addAction(UIAction(handler: { [weak self] _ in
            self?.buttonTapped()
        }), for: .touchUpInside)
        
        return button
    }()
    
    lazy var nativeFilledButton: UIButton = {
        let action = UIAction { action in
            // Eylem burada gerçekleştirilecek
            print("Butona tıklandı!")
        }
        
        let filledButton = UIButton(configuration: .filled(), primaryAction: action/*nil*/)
        filledButton.configuration?.baseBackgroundColor = .systemBlue // Arka plan rengi
        filledButton.configuration?.baseForegroundColor = .white // Yazı rengi
        filledButton.configuration?.title = "Filled Button"
        
        
        return filledButton
    }()
    
    lazy var nativeTintedButton: UIButton = {
        let tintedButton = UIButton(configuration: .tinted(), primaryAction: nil)
        tintedButton.configuration?.baseForegroundColor = .systemBlue // Buton ve yazı rengi
        tintedButton.configuration?.title = "Tinted Button"

        return tintedButton
    }()
    
    @objc func buttonTapped() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
