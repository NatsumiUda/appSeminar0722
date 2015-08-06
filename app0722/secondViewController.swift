//
//  secondViewController.swift
//  app0722
//
//  Created by Natsumi Uda on 2015/08/04.
//  Copyright (c) 2015年 Natsumi Uda. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "second"

        // navigationの背景色
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        
        // navigationのサイズ
        let navigationBar = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 100))
        // 戻るボタンを画像で
        let backButton = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        backButton.setImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton.frame = CGRectMake(0, 0, 63, 63)
        // 戻るボタンのアクション
        backButton.addTarget(self, action: "onClickBuckButton:", forControlEvents: UIControlEvents.TouchUpInside)
        // navigationBarに追加
        navigationBar.addSubview(backButton)
        
        self.navigationController?.view.addSubview(navigationBar)

        
        
        // Viewの背景色をオレンジ色にする.
        self.view.backgroundColor = UIColor.orangeColor()

        // Do any additional setup after loading the view.
    }
    
    // nextButtonのクリック時
    internal func onClickBuckButton(sender: UIButton){
        self.navigationController?.pushViewController(firstViewController(), animated: true)
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
