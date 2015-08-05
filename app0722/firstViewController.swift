//
//  firstViewController.swift
//  app0722
//
//  Created by Natsumi Uda on 2015/08/04.
//  Copyright (c) 2015年 Natsumi Uda. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "first"
        
        // navigationの背景色
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.barTintColor = UIColor.blackColor()
        
        // navigationのサイズ
        let navigationBar = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 100))
        self.navigationController?.view.addSubview(navigationBar)
        
        // Viewの背景色を青にする.
        self.view.backgroundColor = UIColor.cyanColor()
        
        // ボタンの定義をおこなう.
        let nextButton = UIButton(frame: CGRectMake(0,0,100,50))
        nextButton.backgroundColor = UIColor.orangeColor()
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("next", forState: .Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:200)
        nextButton.addTarget(self, action: "onClickNextButton:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(nextButton);

        // Do any additional setup after loading the view.
    }

    // nextButtonのクリック時
    internal func onClickNextButton(sender: UIButton){
        self.navigationController?.pushViewController(secondViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
