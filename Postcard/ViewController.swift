//
//  ViewController.swift
//  Postcard
//
//  Created by 7B Banford on 9/22/14.
//  Copyright (c) 2014 vagabond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAMessageTextFeild: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        // Code will evaluate when we press the button
        messageLabel.hidden = false;
        nameLabel.hidden = false;
        messageLabel.text = enterAMessageTextFeild.text;
        nameLabel.text = enterNameTextField.text;
        enterAMessageTextFeild.text = nil;
        enterAMessageTextFeild.resignFirstResponder();
        enterNameTextField.text = nil;
        enterNameTextField.resignFirstResponder();
        messageLabel.textColor = UIColor.yellowColor();
        nameLabel.textColor = UIColor.yellowColor();
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }
    
}

