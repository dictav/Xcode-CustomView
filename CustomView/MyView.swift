//
//  MyView.swift
//  testtettt
//
//  Created by 阿部慎太郎 on 7/1/15.
//  Copyright © 2015 dictav. All rights reserved.
//

import UIKit

@IBDesignable
class MyView: UIButton {
    @IBInspectable var image: UIImage?
    @IBInspectable var title: String?

    override func drawRect(rect: CGRect) {
        image?.drawInRect(rect)
        print(title)
    }
}
