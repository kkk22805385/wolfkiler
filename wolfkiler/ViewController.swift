//
//  ViewController.swift
//  wolfkiler
//
//  Created by aa on 2020/1/17.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RoleIntroduction_segue" {
            let _ = segue.destination as! RoleIntroduction
        }
    }
    @IBAction func btn__(_ sender: Any) {
        var i = 0
        var y :Float = 0
        for s in 0...10000{
            i = 0
            while true {
                i=i+1
                if ooo(count:8) == 1{break}
            }
            print(s)
            y=y+Float(1/i)
        }
        print(y/10000)
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    func ooo(count:Int) -> Int{
        var j = count
        var k = 0
        var l = 0
        while  true{
            var u  = j/4+j%4
            for _ in 1...j/4 {
                l=l+1
                let y = Int.random(in: 0...9)
                if y == 2 {
                    k=k+1
                    u=u-1
                }
            }
            j = u
            if j < 4{break}
        }
        //print(count,"張藍卡成功合成",k,"張紅卡","總共合成",l,"次")
        return k
    }
}

