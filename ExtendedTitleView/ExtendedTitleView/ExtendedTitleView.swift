//
//  ExtendedTitleView.swift
//  ExtendedTitleView
//
//  Created by YOOJIN KANG on 28/02/2018.
//  Copyright © 2018 INNOAUS. All rights reserved.
//

import Foundation
import UIKit

class ExtendedTitleView : UIView {
    var titleLabel: UILabel!
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.titleLabel = UILabel.init(frame: CGRect(x: 80, y: 30, width: 150, height: 32))
        titleLabel.font =
            UIFont.init(descriptor: UIFontDescriptor.init(fontAttributes: [UIFontDescriptor.AttributeName.textStyle:"bold", UIFontDescriptor.AttributeName.family:"System"]), size: 30.0)
        titleLabel.textColor = UIColor.white
        
        self.imageView = UIImageView.init(frame: CGRect(x: 20, y: 20, width: 45, height: 45))
        imageView.contentMode = .scaleAspectFit
        
        self.addSubview(titleLabel)
        self.addSubview(imageView)
    }
    
    func setTitle(_ title: String) {
        self.titleLabel.text = title
    }
    
    func setImage(named: String) {
        self.imageView.image = UIImage.init(named: named)
    }
    
    func initView(_ title: String, imageName: String, color: UIColor) {
        self.titleLabel.text = title
        self.imageView.image = UIImage.init(named: imageName)
        self.backgroundColor = color
    }
}
