//
//  ViewController.swift
//  UIViewFrameSettter
//
//  Created by liuwin7 on 14-11-4.
//  Copyright (c) 2014年 liuwin7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // demo
        let view: UIView = UIView(frame: CGRectMake(10, 50, self.view.width - 20, 50))
        view.backgroundColor = UIColor.redColor()
        view.tag = 101
        self.view.addSubview(view)
        
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        button.frame = CGRectMake(view.left, view.bottom + 5, 100, 100);
        button.setTitle("Animation", forState: UIControlState.Normal);
        button.addTarget(self, action: "buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        self.view.addSubview(button)
    }

    func buttonClick(btn: UIButton) {
        let view: UIView = btn.superview!.viewWithTag(101)!
        UIView.animateWithDuration(0.35, animations: { () -> Void in
            view.left = 100
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

