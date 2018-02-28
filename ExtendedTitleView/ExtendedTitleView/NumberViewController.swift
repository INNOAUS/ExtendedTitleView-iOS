//
//  NumberViewController.swift
//  ExtendedTitleView
//
//  Created by YOOJIN KANG on 28/02/2018.
//  Copyright © 2018 INNOAUS. All rights reserved.
//

import Foundation
import UIKit

class NumberViewController: UIViewController {
    
    @IBOutlet weak var extTitleView: ExtendedTitleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = UIColor(red:0.28, green:0.51, blue:0.82, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = color
        self.extTitleView.initView("Number", imageName: "icon_ballon", color: color)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
