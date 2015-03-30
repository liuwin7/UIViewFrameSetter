//
//  UIView+Exe.swift
//  UIViewFrameSettter
//
//  Created by liuwin7 on 14-11-4.
//  Copyright (c) 2014年 Liuwin7. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // height
    var height: CGFloat {
        get {
           return CGRectGetHeight(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), newValue)
            self.frame = rect
        }
    }
    
    // width 
    var width: CGFloat {
        get {
            return CGRectGetWidth(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), newValue, CGRectGetWidth(self.frame))
            self.frame = rect
        }
    }
    
    // top
    var top: CGFloat {
        get {
            return CGRectGetMinY(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(CGRectGetMinX(self.frame), newValue, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
    
    // bottom 
    var bottom: CGFloat {
        get {
            return CGRectGetMaxY(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(CGRectGetMinX(self.frame), newValue - CGRectGetHeight(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
    
    // left
    var left: CGFloat {
        get {
            return CGRectGetMinX(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(newValue, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
    
    // right
    var right: CGFloat {
        get {
            return CGRectGetMaxX(self.frame)
        }
        set {
            let rect: CGRect = CGRectMake(newValue - CGRectGetWidth(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
    
    // left top
    var leftTop: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            let origin: CGPoint = newValue
            let rect: CGRect = CGRectMake(origin.x, origin.y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
    
    // right bottom
    var rightBottom: CGPoint {
        get {
            return CGPointMake(CGRectGetMaxX(self.frame), CGRectGetMaxY(self.frame))
        }
        set {
            let origin: CGPoint = CGPointMake(newValue.x - CGRectGetWidth(self.frame), newValue.y - CGRectGetHeight(self.frame))
            let rect: CGRect = CGRectMake(origin.x, origin.y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
            self.frame = rect
        }
    }
}
