//
//  CalendarView.swift
//  Pike-Rush
//
//  Created by Joseph Carroll on 9/8/15.
//  Copyright (c) 2015 Joseph Carroll. All rights reserved.
//
import UIKit

class CalendarView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet
    var tableView: UITableView?
    var items: [String] = ["Deming Cookout", "Sonic Couches", "Triplets Cookout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView!.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }
}