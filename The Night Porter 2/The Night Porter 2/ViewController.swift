//
//  ViewController.swift
//  The Night Porter 2
//
//  Created by Nancy on 21/10/2020.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var taskTableView: UITableView!
    
    @IBAction func resetList(_ sender: Any) {
        
        let confirm = UIAlertController(title: "Are you sure ? ", message: "Really Rest the list ? ", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: .destructive){
            action in
            for i in 0 ..<  self.dailyTasks.count {
                self.dailyTasks[i].completed = false
                
            }
            for i in 0 ..<  self.weaklyTasks.count {
                self.weaklyTasks[i].completed = false
                
            }
            for i in 0 ..<  self.monthlyTasks.count {
                self.monthlyTasks[i].completed = false
                
            }
            self.taskTableView.reloadData()
        
        }
        
        let noAction = UIAlertAction(title: "No", style: .cancel){
            action in
            print ("That was a close one ! ")
            
        }
        // add action to the controller
        confirm.addAction(yesAction)
        confirm.addAction(noAction)
        
        // show alert
        present(confirm, animated: true , completion: nil) 
        

    
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("you selected row \(indexPath.row) in serction number \(indexPath.section)")
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        
        let completAction = UIContextualAction(style: .normal, title: "complete")  { (action :UIContextualAction, sourceView:UIView, actionPerformed: (Bool) -> Void) in
            switch indexPath.section {
            case 0:
            self.dailyTasks[indexPath.row].completed = true
            case 1:
            self.weaklyTasks[indexPath.row].completed = true
            case 2:
                //methods of Delegate
            self.monthlyTasks[indexPath.row].completed = true
            default:
                break
            
            }
            tableView.reloadData()
            actionPerformed(true)
        }
        return UISwipeActionsConfiguration(actions: [completAction])
    }
    
    
    @IBAction func toggleDarkMode(_ sender: Any) {
        
        let mySwithch = sender as! UISwitch
        if mySwithch.isOn {
            view.backgroundColor = UIColor.darkGray
        }else {
            view.backgroundColor = UIColor.white
        }
    }
    
    //methods of datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = UIColor.clear
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
        
        var currentTask :Task!
        switch indexPath.section {
        case 0:
           currentTask=dailyTasks[indexPath.row]
        case 1:
            currentTask=weaklyTasks[indexPath.row]
        case 2:
            currentTask=monthlyTasks[indexPath.row]
        default:
            break

        }
        cell.textLabel?.text = currentTask.name
        cell.backgroundColor = UIColor.clear
        
        
        if currentTask.completed {
            cell.textLabel?.textColor = UIColor.lightGray
            cell.accessoryType = .checkmark
            
        }else {
            cell.textLabel?.textColor = UIColor.black
            cell.accessoryType = .none

        }

        return cell
        
    }
    
    var dailyTasks = [
        Task(name: "Check All Windows", completed: false, type: .daily, lastcompleted: nil),
        Task(name: "Check All Doors ", completed: false, type: .daily, lastcompleted: nil),
        Task(name: "is the boiler fueled ?", completed: false, type: .daily, lastcompleted: nil),
        Task(name: "Check the Mailbox", completed: false, type: .daily, lastcompleted: nil),
        Task(name: "Empty Trash Container ", completed: false, type: .daily, lastcompleted: nil),
        Task(name:  "If freezing , check water pipes ", completed: false, type: .daily, lastcompleted: nil),
        Task(name: "Document strange and unused occurance", completed: false, type: .daily, lastcompleted: nil)
                      
]
    var weaklyTasks = [
        Task(name: "Check inside all cabins", completed: true, type: .weakly, lastcompleted: nil),
        Task(name: "Flush all lavatories in cabins ", completed: false, type: .weakly, lastcompleted: nil),
        
        Task(name: "Walk perimeter of property ", completed: false, type: .weakly, lastcompleted: nil),
    
    ]
    var monthlyTasks = [
        Task(name: "Test Security Alarm ", completed: true, type: .monthly, lastcompleted: nil),
        Task(name: "Test Mostion detector  ", completed: false, type: .monthly, lastcompleted: nil),
        Task(name: "Test Smoke Alarms", completed: false, type: .monthly, lastcompleted: nil)
    
    ]


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
