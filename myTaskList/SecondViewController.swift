//
//  SecondViewController.swift
//  myTaskList
//
//  Created by kehlin swain on 10/17/14.
//  Copyright (c) 2014 kehlin swain. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    //Events
    @IBAction func ButtonAddTask_Click(sender: UIButton)
    {
       taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtTask.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //IOS Touch Function
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        self.view.endEditing(true)
    }
    
    
    //UITextFied Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }

}

