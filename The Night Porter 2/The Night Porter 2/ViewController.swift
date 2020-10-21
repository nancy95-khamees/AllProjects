//
//  ViewController.swift
//  The Night Porter 2
//
//  Created by Nancy on 21/10/2020.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
           return dailyTasks.count
        case 1:
            return weaklyTasks.count
        case 2:
           return monthlyTasks.count
        default :
            return 0
                  }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weakly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text=dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text=weaklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text=monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldnt happen"         }
        return cell
        
    }
    
    let dailyTasks = ["Check All Windows", "Check All Doors ",
    "is the boiler fueled ?", "Check the Mailbox"
    ,"Empty Trash Container ", "If freezing , check water pipes "
    , "Document strange and unused occurance"]
    let weaklyTasks = ["Check inside all cabins",
                       "Flush all lavatories in cabins ",
    "Walk perimeter of property ",
    ]
    let monthlyTasks = ["Test Security Alarm ",
                       "Test Mostion detector  ",
    "Test Smoke Alarms"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


//    @IBAction func changeBachground(_ sender: Any) {
//        view.backgroundColor = UIColor.darkGray
//
//        let everything = view.subviews
//        //return Array of all views in super view
//
//        for ecahView in everything {
//
//            if ecahView is UILabel {
//                // to change only text colors of all label in view
//
//                let currentView = ecahView as! UILabel
//                // to cast for UILable
//
//
//                currentView.textColor = UIColor.white
//
//            }
//        }
//
//
//    }
   
}
