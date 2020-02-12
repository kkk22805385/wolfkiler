//
//  Result_view.swift
//  wolfkiler
//
//  Created by aa on 2020/2/5.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class Result_view: UIViewController {

    @IBOutlet weak var wolf_lab: UILabel!
    @IBOutlet weak var propher_lab: UILabel!
    @IBOutlet weak var witch_lab: UILabel!
    @IBOutlet weak var hunter_lab: UILabel!
    @IBOutlet weak var moron_lab: UILabel!
    @IBOutlet weak var die_lab: UILabel!
    @IBOutlet weak var urchin_lab: UILabel!
    @IBOutlet weak var dady_lab: UILabel!
    @IBOutlet weak var die_num: UILabel!
    @IBOutlet weak var urinch_dis1: UILabel!
    @IBOutlet weak var urinch_dis2: UILabel!
    @IBOutlet weak var btn_die: UIButton!
    @IBOutlet weak var btn_job: UIButton!
    var calcu_res = [Int]()
    var calcu_str = [String]()
    var check_die = 0
    var check_job = 0
    var board = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        wolf_lab.isHidden = true
        propher_lab.isHidden = true
        witch_lab.isHidden = true
        hunter_lab.isHidden = true
        moron_lab.isHidden = true
        die_lab.isHidden = true
        urchin_lab.isHidden = true
        dady_lab.isHidden = true
        die_num.isHidden = true
        if board == 1 {
            urinch_dis1.isHidden = true
            urinch_dis2.isHidden = true
        }
        if board == 2 {
            urchin_lab.text = String(calcu_res[0])
            dady_lab.text = String(calcu_res[1])
            calcu_res.remove(at: 0)
            calcu_res.remove(at: 1)
        }
        print("數目：",calcu_res.count)
        for i in calcu_res{
            print(i)
        }
        for i in calcu_res{
            calcu_str.append(String(i))
        }
        if calcu_res[4] == calcu_res[6] {
            if calcu_res[7] != 0 { die_lab.text = calcu_str[6] + " , " + calcu_str [7] }
            else { die_lab.text = calcu_str[6] }
        }
        else if calcu_res[7] != 0 {
            die_lab.text = calcu_str[4] + " , " + calcu_str [7]
        }else{
            die_num.text = calcu_str[4]
            die_lab.text = "平安夜"
        }
        wolf_lab.text = calcu_str[0] + " , " + calcu_str[1] + " , " + calcu_str[2] + " , "
        + calcu_str[3]
        propher_lab .text = calcu_str[5]
        witch_lab.text = calcu_str[6]
        hunter_lab.text = calcu_str[8]
        moron_lab.text = calcu_str[9]
        //if
        //var wolf = calcu_res[0] + ","
    }
    @IBAction func die_btn(_ sender: Any) {
        
        if check_die == 0{
            btn_die.setTitle("隱藏死亡資訊", for: .normal)
            die_lab.isHidden = false
            die_num.isHidden = false
            check_die = check_die + 1
        }
       else if check_die == 1{
            btn_die.setTitle("顯示死亡資訊", for: .normal)
            die_lab.isHidden =  true
             die_num.isHidden = true
            check_die = check_die - 1
        }
    }
    @IBAction func job_btn(_ sender: Any) {
        print(check_job)
        if check_job == 0{
            btn_job.setTitle("顯示職業", for: .normal)
            wolf_lab.isHidden = false
            propher_lab.isHidden = false
            witch_lab.isHidden = false
            hunter_lab.isHidden = false
            moron_lab.isHidden = false
            
            if board == 2{ urchin_lab.isHidden = false ;dady_lab.isHidden = false }
            check_job = check_job + 1
        }
        else if check_job == 1{
            btn_job.setTitle("隱藏職業", for: .normal)
            wolf_lab.isHidden = true
            propher_lab.isHidden = true
            witch_lab.isHidden = true
            hunter_lab.isHidden = true
            moron_lab.isHidden = true
           
            if board == 2{ urchin_lab.isHidden = true ;dady_lab.isHidden = true }
            check_job = check_job - 1
        }
    }
}
