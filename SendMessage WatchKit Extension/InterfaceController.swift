//
//  InterfaceController.swift
//  SendMessage WatchKit Extension
//
//  Created by yuto on 2015/05/13.
//  Copyright (c) 2015年 yuto. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var myLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visibleaaaa
        super.didDeactivate()
    }
    
    var count = 0
    @IBAction func tapBtn() {
        count++
        myLabel.setText("\(count)")
        WKInterfaceController.openParentApplication(
        ["fromWatchKit":"\(count)"],
        reply:{replyInfo,error in
            println(replyInfo["fromApp"]!)
        })
        
        
    }

    @IBAction func tapBtn2() {
        count--
        myLabel.setText("\(count)")
        WKInterfaceController.openParentApplication(
            ["fromWatchKit":"\(count)"],
            reply:{replyInfo,error in
                println(replyInfo["fromApp"]!)
        })
    }

}
