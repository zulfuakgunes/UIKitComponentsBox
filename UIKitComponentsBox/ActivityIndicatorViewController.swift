//
//  ActivityIndicatorViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class ActivityIndicatorViewController: UIViewController {
    lazy var nativeActivityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.startAnimating()
        //activityIndicator.stopAnimating()
        //activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        return activityIndicator
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            nativeActivityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nativeActivityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

#Preview{
    ActivityIndicatorViewController()
}
