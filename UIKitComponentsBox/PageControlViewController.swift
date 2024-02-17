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
        scrollView.backgroundColor = .red
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(5), height: view.frame.height)
                scrollView.isPagingEnabled = true
                
                
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        return scrollView
    }()
    
    lazy var nativePageControl: UIPageControl = {
       let pageControl = UIPageControl()
        
        pageControl.numberOfPages = 5
        pageControl.backgroundColor = .systemBlue
        pageControl.addTarget(self, action: #selector(pageControlChanged(_:)), for: .valueChanged)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageControl)
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSetup()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
                nativePageControl.currentPage = Int(pageIndex)
    }
    
    func layoutSetup() {
        NSLayoutConstraint.activate(
            [
                nativePageControl.centerXAnchor.constraint(
                    equalTo: view.centerXAnchor
                ),
                nativePageControl.bottomAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.bottomAnchor
                ),
                nativePageControl.leadingAnchor.constraint(
                    equalTo: view.leadingAnchor,
                    constant: 20
                ),
                nativePageControl.trailingAnchor.constraint(
                    equalTo: view.trailingAnchor,
                    constant: -20
                ),
                scrollView.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor
                ),
                scrollView.bottomAnchor.constraint(
                    equalTo: nativePageControl.topAnchor
                ),
                scrollView.leadingAnchor.constraint(
                    equalTo: view.leadingAnchor
                ),
                scrollView.trailingAnchor.constraint(
                    equalTo: view.trailingAnchor
                )
            ]
        )
    }
    
    @objc func pageControlChanged(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(currentPage)*view.frame.size.width, y: 0), animated: true)
    }
    
    
}

#Preview {
    PageControlViewController()
}
