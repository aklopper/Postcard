//
//  ViewController.swift
//  Postcard
//
//  Created by Anthony Klopper on 12/04/2015.
//  Copyright (c) 2015 Anthony Klopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message_label: UILabel!
    @IBOutlet weak var name_field: UITextField!
    @IBOutlet weak var message_field: UITextField!
    @IBOutlet weak var sendMailMessageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessage(sender: AnyObject) {
        message_label.hidden = false
        message_label.text = message_field.text
        message_label.textColor = UIColor.blueColor()
        
        message_field.text = ""
        message_field.resignFirstResponder()
        
        sendMailMessageButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

