//
//  MenuViewController.swift
//  macho
//
//  Created by 木下　和巳 on 11/23/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //playボタンを設置
        let playButton = UIButton()
        playButton.frame = CGRectMake(0,0,250,100)
        playButton.backgroundColor = UIColor.redColor()
        playButton.layer.masksToBounds = true
        playButton.setTitle("スタート", forState: UIControlState.Normal)
        playButton.layer.cornerRadius = 20.0
        playButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        playButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
        
        
    }
    
    internal func onClickPlayButton(sender: UIButton){
        let story1: UIViewController = Story1()
        self.presentViewController(story1, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   
    
    
}
