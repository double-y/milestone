//
//  ProjectViewController.swift
//  milestone
//
//  Created by t2 on 2014/12/27.
//  Copyright (c) 2014年 UT-PSI. All rights reserved.
//
import UIKit

import Foundation



class ProjectViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var tableView : UITableView?
    
    let imgArray: NSArray = ["project","join","setting","calender"]
    var selectedImage: UIImage?
    var projectNumber: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Table Viewのセルの数を指定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        var cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as UITableViewCell
        
        //表示する画像を設定する
        var img = UIImage(named:"\(imgArray[indexPath.row])")
        
        
        // Tag番号 1 で UIImageView インスタンスの生成
        var imageView = tableView.viewWithTag(1) as UIImageView
        //指定した画像をUIImageViewインスタンスに設定する
        imageView.image = img
        
        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = tableView.viewWithTag(2) as UILabel
        //文章をラベルに設定する
        label1.text = "プロジェクトNo.\(indexPath.row + 1)"
        
        return cell
    }
    
    //cellが選択されたとき
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath!) {
        // [indexPath.row] から画像名を探し、UImage を設定
        selectedImage = UIImage(named:"\(imgArray[indexPath.row])")
        projectNumber = tableView.viewWithTag(2) as? UILabel
        
        // SubViewController へ遷移するために Segue を呼び出す
        performSegueWithIdentifier("toDetailProject",sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toDetailProject") {
            let DP:DetailProject = segue.destinationViewController as DetailProject
            // DetailProject のselectedImgに選択された画像を設定する
            DP.selectedImg = selectedImage
            DP.projectNum = projectNumber
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}