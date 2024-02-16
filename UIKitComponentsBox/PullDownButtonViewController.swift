//
//  PullDownButtonViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit

class PullDownButtonViewController: UIViewController {
    lazy var pullDownButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Seçenekler", for: .normal)
        
        if #available(iOS 14.0, *) {
            button.menu = UIMenu(children: [
                UIAction(title: "Seçenek 1", handler: { _ in print("Seçenek 1 seçildi") }),
                UIAction(title: "Seçenek 2", handler: { _ in print("Seçenek 2 seçildi") }),
                UIAction(title: "Seçenek 3", handler: { _ in print("Seçenek 3 seçildi") })
            ])
            button.showsMenuAsPrimaryAction = true
            button.changesSelectionAsPrimaryAction = true
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        return button
    }()
}
