//
//  CompleteTaskViewController.swift
//  Remember Me
//
//  Created by Chris Smith on 27/02/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
            
        } else {
            taskLabel.text = task.name
        }

    }

    @IBAction func completeButtonTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedRow)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}
