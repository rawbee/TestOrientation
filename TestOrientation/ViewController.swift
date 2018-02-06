//
//  ViewController.swift
//  TestOrientation
//
//  Created by Robby Abaya on 2/6/18.
//  Copyright © 2018 rawbee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
        let button = UIButton(type: .roundedRect)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(buttonTap(_:)), for: .touchDown)
        button.setTitle("Show Child", for: .normal)
    }
    
    @objc func buttonTap(_ recognizer: UITapGestureRecognizer) {
        let cvc = ChildViewController()
        cvc.transitioningDelegate = self
        present(cvc, animated: true, completion: nil)
    }
}

extension ViewController: UIViewControllerTransitioningDelegate {   
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return FadeTransition()
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return FadeTransition()
    }
}
