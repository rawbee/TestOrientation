//
//  ChildViewController.swift
//  TestOrientation
//
//  Created by Robby Abaya on 2/6/18.
//  Copyright © 2018 rawbee. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        
        let button = UIButton(type: .roundedRect)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(buttonTap(_:)), for: .touchDown)
        button.setTitle("Dismiss", for: .normal)
    }
    
    @objc func buttonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
