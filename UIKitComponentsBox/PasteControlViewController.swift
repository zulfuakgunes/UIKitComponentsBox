//
//  PasteControlViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 17.02.2024.
//

import Foundation
import UIKit

class PasteControlViewController: UIViewController {
    
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextField konfigürasyonu
        setupTextField()
    }
    
    func setupTextField() {
        textField.frame = CGRect(x: 20, y: 100, width: view.frame.size.width - 40, height: 40)
        textField.borderStyle = .roundedRect
        textField.placeholder = "Buraya yapıştırın"
        
        // UIPasteConfiguration ile yapıştırma işlevselliğinin ayarlanması
        let pasteConfiguration = UIPasteConfiguration(forAccepting: NSString.self)
        textField.pasteConfiguration = pasteConfiguration
        
        view.addSubview(textField)
    }
}

#Preview {
    PasteControlViewController()
}
