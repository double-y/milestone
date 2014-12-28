//
//  DetailProject.swift
//  milestone
//
//  Created by 岡田 航太 on 2014/12/28.
//  Copyright (c) 2014年 UT-PSI. All rights reserved.
//

import Foundation
import UIKit

class DetailProject: UIViewController{
    @IBOutlet var imageView: UIImageView?
    
    @IBOutlet var projectLabel: UILabel!
    
    var selectedImg: UIImage?
    var projectNum: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView?.image = selectedImg
        projectLabel?.text = projectNum?.text
        
        
        // 画像のアスペクト比を維持しUIImageViewサイズに収まるように表示
        imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}