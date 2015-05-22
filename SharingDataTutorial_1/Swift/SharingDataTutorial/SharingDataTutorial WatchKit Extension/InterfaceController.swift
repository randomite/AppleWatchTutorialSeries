//
//  InterfaceController.swift
//  SharingDataTutorial WatchKit Extension
//
//  Created by Ravin Sardal on 5/22/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func showUserInfo() {
        
        let mySharedDefaults = NSUserDefaults(suiteName: "group.sharingdata")
        
        mySharedDefaults?.synchronize()
        
        self.myLabel.setText(mySharedDefaults?.stringForKey("savedUserInput"))
    }
}
