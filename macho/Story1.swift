//
//  Story1.swift
//  macho
//
//  Created by 木下　和巳 on 11/23/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class Story1: UIViewController {
    let delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    let noButton = UIButton()
    let yesButton = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //いやボタン
        let noButton = UIButton()
        noButton.frame = CGRectMake(0,0,100,100)
        noButton.backgroundColor = UIColor.redColor()
        noButton.layer.masksToBounds = true
        noButton.setTitle("アホかよ", forState: UIControlState.Normal)
        noButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        noButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        noButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        noButton.layer.cornerRadius = 20.0
        noButton.tag = 1
        noButton.layer.position = CGPoint(x: 100, y:700)
        noButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(noButton)
        
        //そうボタン
        let yesButton = UIButton()
        yesButton.frame = CGRectMake(0,0,100,100)
        yesButton.backgroundColor = UIColor.redColor()
        yesButton.layer.masksToBounds = true
        yesButton.setTitle("そうだ", forState: UIControlState.Normal)
        yesButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        yesButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        yesButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        yesButton.layer.cornerRadius = 20.0
        yesButton.tag = 0
        yesButton.layer.position = CGPoint(x: 300, y:700)
        yesButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(yesButton)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.text = "課題より筋トレだよなー"
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
    }
    
    internal func onClickPlayButton(sender: UIButton){
        self.delegate.message = sender.tag == 1 ? true : false
        let story1: UIViewController = Hukkin()
        self.presentViewController(story1, animated: true, completion: nil)
    }
}
