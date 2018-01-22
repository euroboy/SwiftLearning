//
//  Utilities.swift
//  SwiftLearning
//
//  Created by Dev on 1/22/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import Foundation
import UIKit

//MARK: Random Generators
extension CGFloat
{
    static func random() -> CGFloat
    {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension Int
{
    static func random() -> Int
    {
        return Int(arc4random_uniform(100000))
    }
}

extension UIColor
{
    static func random() -> UIColor
    {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
