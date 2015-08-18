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
        
        // Viewの背景色の設定
        self.view.backgroundColor = UIColor.whiteColor()

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
