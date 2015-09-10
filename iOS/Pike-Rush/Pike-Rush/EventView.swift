//
//  EventView.swift
//  Pike-Rush
//
//  Created by Joseph Carroll on 9/9/15.
//  Copyright (c) 2015 Joseph Carroll. All rights reserved.
//

import UIKit

class EventView: UIViewController {
    
    @IBOutlet weak var eventTitle: UILabel!
    var event: Event!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTitle.text = event.name
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}