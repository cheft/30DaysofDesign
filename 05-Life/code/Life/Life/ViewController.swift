//
//  ViewController.swift
//  Life
//
//  Created by chenhaifeng on 16/10/26.
//  Copyright © 2016年 cheft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lifeTime: UILabel!
    @IBOutlet weak var lifeTip: UILabel!
    
    var timer = Timer()
    var count = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return UIStatusBarStyle.lightContent
        }
    }

    @IBAction func continueLife(_ sender: UIButton) {
        if timer == nil {
            lifeTip.text = "指纹续命"
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.lifeTick), userInfo: nil, repeats: true)
        } else {
            count = count + 10
        }
        lifeTime.text = String(count)
    }
    
    func lifeTick() {
        if (count == 0) {
            timer.invalidate()
            timer = Timer()
            lifeTip.text = "卒，荣获新生命！"
            return
        }
        count = count - 1
        lifeTime.text = String(count)
    }
}

