//
//  MyLog.swift
//  EZLogging
//
//  Created by Seiko OongYang on 11/2/17.
//  Copyright © 2017 OongYang. All rights reserved.
//
/* 1> before coding, must change Build as release from debug in order to use this framework outside of the project:
 Product > Scheme > Run > Build Configuration > Release */

import Foundation

/* 2> VIP to make this class as public ===========*/
public class MyLog {
    
    /* 3> adding codes ===========================*/
    private var isDebug: Bool!
    
    public init() {
        self.isDebug = false
    }
    
    public func setupBuildConfiguration(isDebug: Bool) {
        self.isDebug = isDebug
        print("Project is in Debug mode: \(isDebug)")
    }
    
    public func PrintMyLog<T>(value: T) {
        if self.isDebug == true {
            print(value)
        } else {
            print("The App BuildConfiguration is NOT in debug mode.")
        }
    }
    
    public func randomRGBColor() -> UIColor {
        return .randomColor()
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red: .randomNum(), green: .randomNum(), blue: .randomNum(), alpha: 1)
    }
}

extension CGFloat {
    static func randomNum() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

/*===========================================================================
 4> [Cmd + B] to build the project for checking if it's OK.
 Note: Framework cannot using Cmd+R.
 
 5> rightClick <.framework>, [Show in Finder]
 
 For local adding framework:
 copy-paste this package-in-Finder to desktop,
 so when Embedded-Binaries > [Add other] will be easy to locate the package.
 ==========================================================================*/


