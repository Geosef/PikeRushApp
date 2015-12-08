//
//  CalendarView.swift
//  Pike-Rush
//
//  Created by Joseph Carroll on 9/8/15.
//  Copyright (c) 2015 Joseph Carroll. All rights reserved.
//
import UIKit

struct Event {
    var name: String?
    var location: String?
    var date: String?
    var startTime: String?
    var endTime: String?
}

class CalendarViewCell : UITableViewCell {
    @IBOutlet var eventTitle: UILabel!
    @IBOutlet var eventDate: UILabel!
    
}

class CalendarView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet
    var tableView: UITableView?
    var events: [Event] =
    [Event(name: "Dorm Storming", location: " All Dorms", date: "Sept. 14th", startTime: "7pm", endTime: "10pm"),
        Event(name: "Informals 1", location: "Pike", date: "Sept. 15th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Informals 2", location: "Pike", date: "Sept. 16th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Deming Cookout", location: "Deming Hall", date: "Sept. 17th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Speed Cookout", location: "Speed Hall", date: "Sept. 21st", startTime: "5pm", endTime: "10pm"),
        Event(name: "Dodgeball & Pizza", location: "Pike", date: "Sept. 22nd", startTime: "5pm", endTime: "10pm"),
        Event(name: "Triplets Cookout", location: "Scharpenberg Hall", date: "Sept. 24th", startTime: "5pm", endTime: "10pm"),
        Event(name: "First Formals 1", location: "Pike", date: "Sept. 25th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Pike Day", location: "Pike", date: "Sept. 26th", startTime: "5pm", endTime: "10pm"),
        Event(name: "First Formals 2", location: "Pike", date: "Sept. 27th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Sonic Couches", location: "Terre Haute, IN", date: "Sept. 28th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Skyzone", location: "Plainfield, IN", date: "Sept. 29th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Game Night", location: "Pike", date: "Oct. 1st", startTime: "5pm", endTime: "10pm"),
        Event(name: "Scavenger Hunt", location: "Pike", date: "Oct. 2nd", startTime: "5pm", endTime: "10pm"),
        Event(name: "Holiday World", location: "Santa Claus, IN", date: "Oct. 3rd", startTime: "5pm", endTime: "10pm"),
        Event(name: "MNF 1", location: "Pike", date: "Oct. 5th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Milkshake & Movie", location: "Pike", date: "Oct. 6th", startTime: "5pm", endTime: "10pm"),
        Event(name: "MNF 2", location: "Pike", date: "Oct. 12th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Second Formals 1", location: "Pike", date: "Oct. 16th", startTime: "5pm", endTime: "10pm"),
        Event(name: "St. Louis Trip", location: "St. Louis, MO", date: "Oct. 17th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Second Formals 2", location: "Pike", date: "Oct. 18th", startTime: "5pm", endTime: "10pm"),
        Event(name: "Bid Tuesday", location: "Pike", date: "Oct. 20th", startTime: "5pm", endTime: "9pm")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CalendarViewCell = self.tableView!.dequeueReusableCellWithIdentifier("calendarCell") as! CalendarViewCell
        
        cell.eventTitle.text = self.events[indexPath.row].name
        cell.eventDate.text = self.events[indexPath.row].date
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.tableView?.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showEventDetails") {
            let viewController:EventView = segue.destinationViewController as! EventView
            let indexPath = self.tableView!.indexPathForSelectedRow
            viewController.event = self.events[indexPath!.row]
        }
    }
}