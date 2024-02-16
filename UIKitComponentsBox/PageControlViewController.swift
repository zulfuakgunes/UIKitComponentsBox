//
//  PageControlViewController.swift
//  UIKitComponentsBox
//
//  Created by Zülfü Akgüneş on 16.02.2024.
//

import UIKit
class PageControlViewController: UIViewController, UIScrollViewDelegate {
    let colors: [UIColor] = [.red,.blue, .green]
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.delegate = self
                scrollView.isPagingEnabled = true
                view.addSubview(scrollView)
                
                scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(colors.count), height: scrollView.frame.height)
                
                for i in 0..<colors.count {
                    let frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: scrollView.frame.height)
                    let subView = UIView(frame: frame)
                    subView.backgroundColor = colors[i]
                    scrollView.addSubview(subView)
                }
        
        
        return scrollView
    }()
    
    lazy var nativePageControl: UIPageControl = {
       let pageControl = UIPageControl()
        
        pageControl.numberOfPages = 0
        pageControl.addTarget(self, action: #selector(pageControlChanged(_:)), for: .valueChanged)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageControl)
        return pageControl
    }()
    
    @objc func pageControlChanged(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
    }
}
