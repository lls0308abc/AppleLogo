//
//  UIMaskImageView.swift
//  AppleLogo
//
//  Created by Amatsukaze on 2018/5/2.
//  Copyright © 2018年 Amatsukaze. All rights reserved.
//

import UIKit

@IBDesignable
class UIMaskImageView: UIImageView {
    var maskImageView = UIImageView()
    
    @IBInspectable
    var maskImage: UIImage?{
        didSet{
            maskImageView.image = maskImage
            maskImageView.frame = bounds
            mask = maskImageView
        }
    }

}
