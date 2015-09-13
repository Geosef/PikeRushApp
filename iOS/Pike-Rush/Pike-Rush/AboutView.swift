//
//  AboutView.swift
//  Pike-Rush
//
//  Created by Joseph Carroll on 9/8/15.
//  Copyright (c) 2015 Joseph Carroll. All rights reserved.
//

import UIKit
import MapKit

class AboutView: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        var content = UIView(frame: CGRectMake(self.scrollView.frame.origin.x, self.scrollView.frame.origin.y, screenSize.width, 1150))
        var pic1 = UIImageView(image: UIImage(named: "25th anniversary.jpg"))
        pic1.contentMode = UIViewContentMode.ScaleAspectFit
        
    }
}