//
//  LabelViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 15.02.2024.
//

import UIKit

class LabelViewController: UIViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupLayout()
    }
}

extension LabelViewController {
    func setupLayout() {
        NSLayoutConstraint.activate([
            nativeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nativeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nativeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            nativeLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

#Preview {
    LabelViewController()
}
