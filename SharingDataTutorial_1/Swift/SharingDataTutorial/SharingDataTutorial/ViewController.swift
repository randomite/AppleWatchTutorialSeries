//
//  ViewController.swift
//  SharingDataTutorial
//
//  Created by Ravin Sardal on 5/22/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveInfo(sender: AnyObject) {
        var myString = self.myTextField.text
        self.myLabel.text = myString
        
        let mySharedDefaults = NSUserDefaults(suiteName: "group.sharingdata")
        
        mySharedDefaults?.setObject(myString, forKey: "savedUserInput")
        
        mySharedDefaults?.synchronize()
        
    }

}

