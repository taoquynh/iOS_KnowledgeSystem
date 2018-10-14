//
//  TextFieldViewController.swift
//  iOSControl
//
//  Created by Tào Quỳnh  on 10/14/18.
//  Copyright © 2018 Tào Quỳnh . All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTextField()
    }

    func setupTextField() {
        textField.delegate = self
    }
    
}

extension TextFieldViewController: UITextFieldDelegate {
    
}
