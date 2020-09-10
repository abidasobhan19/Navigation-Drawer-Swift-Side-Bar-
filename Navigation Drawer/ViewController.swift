//
//  ViewController.swift
//  Navigation Drawer
//
//  Created by ABid A.Sobhan on 9/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
   
  var arraydata = ["Home","Email","Shared Device","Logout"]
    var arrayimg = [#imageLiteral(resourceName: "name"),#imageLiteral(resourceName: "email"),#imageLiteral(resourceName: "mobile"),#imageLiteral(resourceName: "password")]
    
    
    
    
    
    

    @IBOutlet weak var sideview: UIView!
    
    
    @IBOutlet weak var sidebar: UITableView!
    
    
    var isSideviewOpen:  Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return arraydata.count
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.img.image = arrayimg[indexPath.row]
        cell.lbl.text = arraydata[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideview.isHidden = true
        UIColor.groupTableViewBackground
        isSideviewOpen = false
        
    }


    @IBAction func sidebarbutton(_ sender: Any) {
        
        sidebar.isHidden = false
        sideview.isHidden = false
        self.view.bringSubviewToFront(sideview)
        
        if !isSideviewOpen {
            isSideviewOpen = true
            sideview.frame = CGRect.init(x: 0, y: 88, width: 0, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 0, height: 808)
            UIView.setAnimationDuration(0.5)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
        
            sideview.frame = CGRect.init(x: 0, y: 88, width: 240, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 240, height: 808)
            UIView.commitAnimations()
            
        }else{
            
            sidebar.isHidden = true
            sideview.isHidden = true
            isSideviewOpen = false
            sideview.frame = CGRect.init(x: 0, y: 88, width: 0, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 0, height: 808)
            UIView.setAnimationDuration(0.5)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            
            sideview.frame = CGRect.init(x: 0, y: 88, width: 240, height: 808)
            sidebar.frame = CGRect.init(x: 0, y: 0, width: 240, height: 808)
            UIView.commitAnimations()
            
        }
        
        
    }
}

