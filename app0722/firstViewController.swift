//
//  firstViewController.swift
//  app0722
//
//  Created by Natsumi Uda on 2015/08/04.
//  Copyright (c) 2015年 Natsumi Uda. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    private var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "first"
        
//        // 背景画像の設定
//        backgroundImage = UIImageView(frame: CGRectMake(0,100,self.view.bounds.width,self.view.bounds.height-100))
//        let bgImage = UIImage(named: "cinderella.jpg")
//        backgroundImage.image = bgImage
//        backgroundImage.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
//        self.view.addSubview(backgroundImage)
        
        // ボタンの定義をおこなう.
        let nextButton = UIButton(frame: CGRectMake(0,0,100,50))
        nextButton.backgroundColor = UIColor.blueColor()
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("next", forState: .Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:400)
        nextButton.addTarget(self, action: "onClickNextButton:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(nextButton);
        
        // Viewの背景色の設定
        self.view.backgroundColor = UIColor.blackColor()

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
