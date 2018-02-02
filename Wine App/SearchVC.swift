//
//  ViewController.swift
//  Wine App
//
//  Created by Andy Kwong on 1/29/18.
//  Copyright © 2018 Andy Kwong. All rights reserved.
//

import UIKit


class SearchVC: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var searchField: UITextField!
    @IBAction func whiteButton(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchField.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor
        searchField.layer.shadowOffset = CGSize(width: 0, height: 3)
        searchField.layer.shadowColor = UIColor.black.cgColor
        // Do any additional setup after loading the view, typically from a nib.
        
        self.hideKeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == searchField {
            textField.resignFirstResponder()
        }
        return true
    }
    
}

extension UIViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(UIViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}

