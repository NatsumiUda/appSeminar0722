//
//  customNavigationController.swift
//  app0722
//
//  Created by Natsumi Uda on 2015/08/06.
//  Copyright (c) 2015年 Natsumi Uda. All rights reserved.
//

import UIKit

class customNavigationController: UINavigationController,UINavigationControllerDelegate {
    var returnBtn:UIButton?
    override func viewDidLoad() {
        let customNavigationBar = UIImageView(image: UIImage(named: "cinderella.jpg"))
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 100)
        customNavigationBar.userInteractionEnabled = true
        self.view.addSubview(customNavigationBar)
        
        returnBtn = UIButton()
        returnBtn?.addTarget(self, action: "returnScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        returnBtn?.backgroundColor = UIColor.blackColor()
        returnBtn?.layer.masksToBounds = true
        returnBtn?.setTitle("back", forState: .Normal)
        returnBtn?.layer.cornerRadius = 20.0
        returnBtn?.frame = CGRectMake(20, 40, 100, 50)
        customNavigationBar.addSubview(returnBtn!)

        self.delegate = self
    }
    
    func returnScreen(pSender:UIButton){
        self.popViewControllerAnimated(true)
        
    }
    
    func navigationController(navigationController: UINavigationController,
        willShowViewController viewController: UIViewController, animated: Bool) {
            if(self.childViewControllers.count <= 1){
                returnBtn?.alpha = 0
            }else{
                returnBtn?.alpha = 1
            }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
