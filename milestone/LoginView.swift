//
//  LoginView.swift
//  milestone
//
//  Created by 岡田 航太 on 2014/12/29.
//  Copyright (c) 2014年 UT-PSI. All rights reserved.
//

import UIKit
import Foundation

class LoginView: UIViewController{
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    let PASSWORD = "milestone"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        if identifier == "home" {
            var name = username.text
            var pass = password.text
            
            //パスワードが"milestone"のときのみ画面遷移
            if (name == PASSWORD) {
                println("*** Yes, segue will occur")
                return true
            }
            else {
                println("*** NO, segue wont occur")
                
                //パスワードの再入力のアラート
                let alertController = UIAlertController(title: "ログインエラー", message: "再入力してください", preferredStyle: .Alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                alertController.addAction(defaultAction)
                
                presentViewController(alertController, animated: true, completion: nil)
                
                
                
            }
        }
        
        return false
    }
    
    
    
    
    
    @IBAction func checkLogin(sender: UIButton){
        var name = username.text
        var pass = password.text
        println("ユーザー名："+name)
        println("パスワード："+pass)
    }
}

