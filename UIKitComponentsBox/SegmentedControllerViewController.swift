//
//  SegmentedControllerViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit

class SegmentedControllerViewController: UIViewController {
    lazy var nativeSegmentedControl: UISegmentedControl = {
        let items = ["1", "2", "3"]
        let segmentedController = UISegmentedControl(items: items)
        
        
        segmentedController.selectedSegmentIndex = 0
        segmentedController.addTarget(self, action: #selector(segmentTapped), for: .valueChanged)
        
        
        segmentedController.addTarget(self, action: #selector(addSegment), for: .touchUpInside)
        segmentedController.addTarget(self, action: #selector(removeSegment), for: .touchUpInside)
        
        /*
        segmentedController.isMomentary = true
        segmentedController.accessibilityLabel = "Seçenekler"
        segmentedController.accessibilityHint = "Seçenekler arasında geçiş yapmak için seçin"
         */
        
        //for selected state
        segmentedController.selectedSegmentTintColor = UIColor.blue
        segmentedController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        segmentedController.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.blue], for: .normal)
//        segmentedControl.setTitle("Başlık", forSegmentAt: 0)
//        segmentedControl.setImage(UIImage(named: "iconName"), forSegmentAt: 1)
        
        segmentedController.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedController)
        return segmentedController
    }()
    
    @objc func addSegment() {
        let newSegmentIndex = nativeSegmentedControl.numberOfSegments
        nativeSegmentedControl.insertSegment(withTitle: "Segment Eklendi", at: newSegmentIndex, animated: true)
        
    }
     
    @objc func removeSegment() {
        let lastSegmentIndex = nativeSegmentedControl.numberOfSegments - 1
        nativeSegmentedControl.removeSegment(at: lastSegmentIndex, animated: true)
    }
    
    @objc func segmentTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("Tapped 1")
        case 1:
            print("Tapped 2")
        case 2:
            print("Tapped 3")
        default:
            break
        }
    }
}
