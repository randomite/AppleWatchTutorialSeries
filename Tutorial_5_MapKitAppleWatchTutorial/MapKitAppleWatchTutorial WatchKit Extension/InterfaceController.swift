//
//  InterfaceController.swift
//  MapKitAppleWatchTutorial WatchKit Extension
//
//  Created by Ravin Sardal on 4/29/15.
//  Copyright (c) 2015 Ravin Sardal. All rights reserved.
//

import WatchKit
import Foundation
import MapKit

class InterfaceController: WKInterfaceController {

    @IBOutlet var myMapView: WKInterfaceMap!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let infiniteLoopCoordinates = CLLocationCoordinate2D(latitude: 37.3324698, longitude: -122.0310092)
        
        let areaSpan = MKCoordinateSpanMake(0.05, 0.05)
        
        let areaRegion = MKCoordinateRegion(center: infiniteLoopCoordinates, span: areaSpan)
        
        myMapView.setRegion(areaRegion)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
