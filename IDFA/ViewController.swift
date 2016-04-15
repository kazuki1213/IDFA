//
//  ViewController.swift
//  IDFA
//
//  Created by kazuki nozawa on 2016/04/15.
//  Copyright © 2016年 Kazuki Nozawa. All rights reserved.
//

import UIKit
import AdSupport



class ViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var idfaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //IDFA
        let myIDFA = ASIdentifierManager().advertisingIdentifier
        idfaLabel.text = myIDFA.UUIDString;
        print("myIDFA :\(myIDFA.UUIDString.utf8)")
        
        UIPasteboard.generalPasteboard().string = myIDFA.UUIDString
        
        var av = UIAlertView(title: "IDFA", message:"copied!!", delegate: self, cancelButtonTitle: "OK")
        av.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if (buttonIndex == alertView.cancelButtonIndex) {
            //Canceled
        }
    }
}

