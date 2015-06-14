//
//  InterfaceController.swift
//  NativeWatchApp WatchKit Extension
//
//  Created by Ravin Sardal on 6/14/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var myMoviePlayer: WKInterfaceMovie!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let url = NSBundle.mainBundle().URLForResource("test", withExtension: "mov")
        self.myMoviePlayer.setMovieURL(url!)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
