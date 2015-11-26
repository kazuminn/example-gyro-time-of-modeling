//
//  Story2.swift
//  macho
//
//  Created by 木下　和巳 on 11/23/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class Story2: UIViewController {
    var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //nextボタン
        let nextButton = UIButton()
        nextButton.frame = CGRectMake(0,0,50,50)
        nextButton.backgroundColor = UIColor.redColor()
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("うん", forState: UIControlState.Normal)
        nextButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        nextButton.setTitle("うん", forState: UIControlState.Highlighted)
        nextButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        nextButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.frame.width/2, y:700)
        nextButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(nextButton)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.text = self.delegate.message == true ? "僕たち気が合うね" :"課題楽しい?";
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
    }
    
    internal func onClickPlayButton(sender: UIButton){
        let ebisory: UIViewController = Ebisory()
        self.presentViewController(ebisory, animated: true, completion: nil)
    }
}
