//
//  WolfGun_ViewController.swift
//  wolfkiler
//
//  Created by aa on 2020/2/6.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class WolfGun_ViewController: UIViewController {
    @IBOutlet weak var wolf_kill_board: UILabel!
    @IBOutlet weak var wolf_kill_seq: UILabel!
    @IBOutlet weak var skill: UILabel!
    @IBOutlet weak var job_img: UIImageView!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var number10: UIButton!
    @IBOutlet weak var number11: UIButton!
    @IBOutlet weak var number12: UIButton!
    @IBOutlet weak var noselect: UIButton!
    @IBOutlet weak var decide_num: UIButton!
    var calcu_job = [Int]() //記錄所有職業數字
    var step = 0        //步驟
    var board = 0   //選擇的板子
    var selecnum = 0
    var selecnum1 = [Int]()
    let click_on = UIColor(red: 250.0/255, green: 106.0/255, blue: 65.0/255, alpha: 1.0) //點選號碼顏色
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background.jpg")!)
        print(board)
        if board == 3{
            wolf_kill_board.text = "狼槍守衛"
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if board == 3{
            selecnum = 0
            selecnum1.removeAll()
            step = step + 1
            general(dis: step)
        }
        for i in calcu_job{
            print(i)
        }
        print("--------")
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
           return UIStatusBarStyle.lightContent
    }
    func general(dis : Int){
        print("步驟：",step,"\nselect:",selecnum)
        switch dis {
        case 1:
            job_img.image = UIImage(named: "guard.jpg")
            wolf_kill_seq.text = "守衛請睜眼"
            skill.text = "請填寫守衛後按下確定"
        case 2:
            job_img.image = UIImage(named: "guard.jpg")
            wolf_kill_seq.text = "請決定守護目標"
            skill.text = "守護目標為: 號玩家"
        case 3:
            job_img.image = UIImage(named: "job_wolfgun.jpg")
            wolf_kill_seq.text = "狼人請請睜眼"
            skill.text = "請填寫狼槍後按下確定"
        case 4:
            job_img.image = UIImage(named: "job_wolf.jpg")
            wolf_kill_seq.text = "狼人請請睜眼"
            skill.text = "請填寫三位小狼後按下確定"
        case 5:
            job_img.image = UIImage(named: "job_wolf.jpg")
            wolf_kill_seq.text = "請決定擊殺對象"
            skill.text = "擊殺對象為: 號玩家"
        case 6:
            job_img.image = UIImage(named: "prophet.jpg")
            wolf_kill_seq.text = "預言家請睜眼"
            skill.text = "請填寫預言家後按下確定"
        case 7:
            job_img.image = UIImage(named: "prophet.jpg")
            wolf_kill_seq.text = "請決定查驗對象"
            skill.text = "查驗對象為: 號玩家"
        case 8:
            job_img.image = UIImage(named: "witch.jpg")
            wolf_kill_seq.text = "女巫請睜眼"
            skill.text = "請填寫女巫後按下確定"
        case 9:
            job_img.image = UIImage(named: "witch.jpg")
            wolf_kill_seq.text = "解藥請直接按下確定,毒藥請點選號碼後按下確定"
            wolf_kill_seq.font = UIFont.systemFont(ofSize: 18.0)
            skill.text = "死亡玩家為:" + String(calcu_job[6]) + "號玩家"
        case 10:
            job_img.image = UIImage(named: "hunter.jpg")
            wolf_kill_seq.font = UIFont.systemFont(ofSize: 25.0)
            wolf_kill_seq.text = "獵人請睜眼"
            skill.text = ""
        default:
            step = 0
            selecnum1.removeAll()
            selecnum = 0
            let vc = storyboard?.instantiateViewController(withIdentifier: "Result") as! Result_view
            vc.calcu_res = calcu_job
            present(vc, animated: true, completion: nil)
            calcu_job.removeAll()
            break
        }
       }
    func backgray(select_num : Int ){
        if step == 4{
        }else{
            number1.backgroundColor = UIColor.lightGray
            number2.backgroundColor = UIColor.lightGray
            number3.backgroundColor = UIColor.lightGray
            number4.backgroundColor = UIColor.lightGray
            number5.backgroundColor = UIColor.lightGray
            number6.backgroundColor = UIColor.lightGray
            number7.backgroundColor = UIColor.lightGray
            number8.backgroundColor = UIColor.lightGray
            number9.backgroundColor = UIColor.lightGray
            number10.backgroundColor = UIColor.lightGray
            number11.backgroundColor = UIColor.lightGray
            number12.backgroundColor = UIColor.lightGray
        }
        if select_num == 1{
            number1.backgroundColor = UIColor.lightGray
            number2.backgroundColor = UIColor.lightGray
            number3.backgroundColor = UIColor.lightGray
            number4.backgroundColor = UIColor.lightGray
            number5.backgroundColor = UIColor.lightGray
            number6.backgroundColor = UIColor.lightGray
            number7.backgroundColor = UIColor.lightGray
            number8.backgroundColor = UIColor.lightGray
            number9.backgroundColor = UIColor.lightGray
            number10.backgroundColor = UIColor.lightGray
            number11.backgroundColor = UIColor.lightGray
            number12.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBAction func decide_btn(_ sender: Any) {
        backgray(select_num : 1)
        if step == 4{
            if selecnum1.count < 3 {
                selecnum1.removeAll()
                alert_action(title: "選擇錯誤", message: "")
            }
            else{
                var check = true
                for i in selecnum1{
                    if !check_job(num: i){
                        check = false
                        break;
                    }
                }
                if  check {
                    for i in selecnum1{
                        calcu_job.append(i)
                    }
                    self.viewWillAppear(true)
                }
                else{
                    alert_action(title: "重複選擇職業", message: "")
                    selecnum1.removeAll()
                }
                
            }

        }
        else if step == 7{
            let identity = propher_skill(num : selecnum)
            alert_action(title: "你選擇的玩家身份為:" + identity, message: "",type:1)
            
            
            
        }
        else if step == 10{
            calcu_job.append(selecnum)
            let identity = hunter_skill(num : selecnum)
            alert_action(title: identity, message: "",type:1)
        }
        else {
            if selecnum == 0 && step != 2 && step != 9{
                alert_action(title: "選擇錯誤", message: "")
            }else{
                print(check_job(num : selecnum))
                if check_job(num : selecnum){
                    calcu_job.append(selecnum)
                    self.viewWillAppear(true)
                }else{
                    alert_action(title: "重複選擇職業", message: "")
                }
                
            }
        }
    }
    
    @IBAction func back(_ sender: Any) {
         if step == 2 { calcu_job.removeAll()} else { calcu_job.remove(at: step + 1)}
        step = step - 2
        self.viewWillAppear(true)
    }
    @IBAction func selectRoleButtonPressed(_ sender: UIButton) {
        backgray(select_num: 0)
        if step == 4 {
            if selecnum1.count < 3 && sender.tag != 2 {
                if check_btn(num : Int(sender.currentTitle!)!){
                    selecnum1.append(Int(sender.currentTitle!)!)
                }
                sender.backgroundColor = click_on
            }
        }else{
             if sender.tag != 2{
                if step == 5 { skill.text = "擊殺目標為:" + sender.currentTitle! + "號玩家"}
                if step == 7 { skill.text = "查驗對象為:" + sender.currentTitle! + "號玩家"}
                selecnum = Int(sender.currentTitle!)!
                sender.backgroundColor = click_on
            }
        }
        
        switch sender {
            case noselect :
                backgray(select_num : 1)
                if step == 4 && !selecnum1.isEmpty{ selecnum1.removeAll()}
                selecnum = 0
                if step == 5 { skill.text = "擊殺目標為: 號玩家" }
                if step == 7 { skill.text = "查驗對象為: 號玩家" }
            default:
                break
        }
    }
    func propher_skill(num : Int) -> String{
        var k = 0
        for i in calcu_job{
            k = k + 1
            if i == num {return "狼人"}
            if k == 4 { return "好人"}
        }
        return "好人"
    }
    func hunter_skill(num : Int) -> String{
        if num == calcu_job[7]{ return "無法開槍"}
        return "可以開槍"
    }
    func check_btn(num : Int) -> Bool{
        for k in selecnum1{
            if k == num { return false }
        }
        return true
    }
    func check_job(num : Int) -> Bool{
        var i = 0
        for k in calcu_job{
            if (i == 1 || i == 6 || i == 9) && board == 3 { continue }
            i=i+1
            if num == k { return false}
        }
        return true
    }
    func alert_action(title:String,message:String){
        let controller = UIAlertController(title: title, message:message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    func alert_action(title:String,message:String,type:Int){
        let controller = UIAlertController(title:title, message:message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){(_) in
            self.viewWillAppear(true)
        }
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
}
