//
//  PopupButtonViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class PopupButtonViewController: UIViewController {
    lazy var popupButton: UIButton = {
        let button = UIButton()

        if #available(iOS 14.0, *) {
            
            var actions = [UIAction]()
            actions.append(UIAction(title: "Seçenek 1", handler: { _ in print("Seçenek 1 seçildi") }))
            actions.append(UIAction(title: "Seçenek 2", handler: { _ in print("Seçenek 2 seçildi") }))
            
            let menu = UIMenu(title: "", children: actions)
            button.menu = menu
            button.showsMenuAsPrimaryAction = true
        }
        
        
        button.addTarget(self, action: #selector(popupButtonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }()

    
    
    @objc func popupButtonAction() {
        let alertController = UIAlertController(
            title: nil,
            message: "Seçenekler",
            preferredStyle: .actionSheet
        )
        
        let option1 = UIAlertAction(
            title: "Seçenek 1",
            style: .default
        ) { action in
            // Seçenek 1'e tıklandığında yapılacak işlem
            print("Seçenek 1 seçildi") }
        
        let option2 = UIAlertAction(
            title: "Seçenek 2",
            style: .default
        ) { action in
            // Seçenek 2'ye tıklandığında yapılacak işlem
            print(
                "Seçenek 2 seçildi"
            )
        }
       
        let cancelAction = UIAlertAction(
            title: "İptal",
            style: .cancel
        )
        
        alertController.addAction(option1)
        alertController.addAction(option2)
        alertController.addAction(cancelAction)
    }
}

extension PopupButtonViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            popupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popupButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                ])
    }
}
