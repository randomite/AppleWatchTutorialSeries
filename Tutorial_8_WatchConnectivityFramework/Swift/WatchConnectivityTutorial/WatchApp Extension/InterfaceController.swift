//
//  InterfaceController.swift
//  WatchApp Extension
//
//  Created by Ravin Sardal on 9/26/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet var messageLabel: WKInterfaceLabel!
    var session:WCSession!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if(WCSession.isSupported()){
            self.session = WCSession.defaultSession()
            self.session.delegate = self
            self.session.activateSession()
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sendMessageToWatch() {
        if(WCSession.isSupported()){
            session.sendMessage(["b":"goodBye"], replyHandler: nil, errorHandler: nil)
        }
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        //recieving message from iphone
        self.messageLabel.setText(message["a"]! as? String)
    }
}
