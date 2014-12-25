//
//  ViewController.swift
//  milestone
//
//  Created by 安田洋介 on 2014/12/08.
//  Copyright (c) 2014年 UT-PSI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var project_menu: UIImageView!
    
    @IBOutlet var calender_menu: UIImageView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        project_menu.image = UIImage(named:"project")
        calender_menu.image = UIImage(named: "calender")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
    }

    
}

