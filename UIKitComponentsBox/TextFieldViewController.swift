//
//  TextFieldViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class TextFieldViewController: UIViewController, UITextFieldDelegate {
    lazy var nativeTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "Hello world"
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.borderStyle = .roundedRect
        textField.textColor = .darkGray
        textField.delegate = self //textfield delegate set
        
        textField.returnKeyType = .done
        textField.addTarget(self, action: #selector(returnedPressed), for: .editingDidEnd)
        
        view.addSubview(textField)
        return textField
    }()
    
    @objc func returnedPressed() {
        nativeTextField.becomeFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nativeTextField.becomeFirstResponder()
        return true
    }
}
