//
//  ViewController.swift
//  outlet and actions
//
//  Created by Nancy on 20/10/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label1: UILabel!
    
    @IBAction func changeLabel1(_ sender: Any) {
        
        label1.text = "label 1 changed "
    }
    @IBOutlet weak var label2: UILabel!
    @IBAction func changeLabel2(_ sender: Any) {
        label2.text = "label 2 changed "
    }
}

