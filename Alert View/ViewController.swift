//
//  ViewController.swift
//  Alert View
//
//  Created by Smeet Bhatt on 17/10/17.
//  Copyright © 2017 Smeet Bhatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordConfirmText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertButton(_ sender: Any) {
        
        if passwordText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Password.", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        else if passwordText.text != passwordConfirmText.text {
            
            let alert = UIAlertController(title: "Error", message: "Password does not match", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: "Success", message: "account created with password \(passwordText.text!).", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

