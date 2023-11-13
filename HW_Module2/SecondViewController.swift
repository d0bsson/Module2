//
//  SecondViewController.swift
//  HW_Module2
//
//  Created by d0bsson on 11.11.2023.
//

import UIKit

class SecondViewController: UIViewController {
    class SecondViewController: UIViewController {
        
        lazy var someTF = {
            let textField = UITextField()
            textField.frame = CGRect(x: 10, y: 200, width: 200, height: 40)
            textField.textColor = .black
            return textField
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
    }
}
