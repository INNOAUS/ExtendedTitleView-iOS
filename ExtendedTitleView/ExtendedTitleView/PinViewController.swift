//
//  PinViewController.swift
//  ExtendedTitleView
//
//  Created by YOOJIN KANG on 28/02/2018.
//  Copyright © 2018 INNOAUS. All rights reserved.
//

import Foundation
import UIKit

class PinViewController: UIViewController {
    
    @IBOutlet weak var extTitleView: ExtendedTitleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = UIColor(red:0.90, green:0.37, blue:0.37, alpha:1.0)
        self.navigationController?.navigationBar.barTintColor = color
        self.extTitleView.initView("PIN", imageName: "icon_box", color: color)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
