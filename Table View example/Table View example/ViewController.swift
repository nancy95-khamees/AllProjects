//
//  ViewController.swift
//  Table View example
//
//  Created by Nancy on 20/10/2020.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //traditioanl way without resuablity object
       // let cell = UITableViewCell()
        
        
        //Resuable cell object (best practices) (dequeued cell)
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        cell.textLabel?.text = "This text for cell \(indexPath.row)"
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

