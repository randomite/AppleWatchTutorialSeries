//
//  ViewController.swift
//  WatchConnectivityTutorial
//
//  Created by Ravin Sardal on 9/26/15.
//  Copyright © 2015 Ravin Sardal. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {
    var session: WCSession!
    @IBOutlet var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if(WCSession.isSupported()){
            self.session = WCSession.defaultSession()
            self.session.delegate = self
            self.session.activateSession()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageToWatch(sender: AnyObject) {
        //send message to watch
        session.sendMessage(["a":"hello"], replyHandler: nil, errorHandler: nil)
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        //recieve messages from watch
        self.messageLabel.text = message["b"]! as? String
        dispatch_async(dispatch_get_main_queue(), {
            self.messageLabel.text = message["b"]! as? String
        })
    }


}

