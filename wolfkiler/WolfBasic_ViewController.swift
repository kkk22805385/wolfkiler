//
//  WolfBasic_ViewController.swift
//  wolfkiler
//
//  Created by aa on 2020/2/6.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class WolfBasic_ViewController: UIViewController {
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
    var bastard = [Int]()
    var step = 0        //步驟
    var board = 0 //選擇的板子
    var selecnum = 0
    var selecnum1 = [Int]()
    let click_on = UIColor(red: 250.0/255, green: 106.0/255, blue: 65.0/255, alpha: 1.0) //點選號碼顏色
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background.jpg")!)
        print(board)
        if board == 1{ wolf_kill_board.text = "預女獵白" }
        if board == 2{ wolf_kill_board.text = "預女獵白混" }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if board == 1{
            selecnum = 0
            selecnum1.removeAll()
            step = step + 1
            general_1(dis: step)
        }
        if board == 2{
            selecnum = 0
            selecnum1.removeAll()
            step = step + 1
            general_2(dis: step)
        }
        print("步驟：",step)
        for i in calcu_job{
            print(i)
        }
        print("--------")
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
           return UIStatusBarStyle.lightContent
    }
    //沒有混子
    func general_1(dis : Int){
        switch dis {
        case 1:
            job_img.image = UIImage(named: "job_wolf.jpg")
            wolf_kill_seq.text = "狼人請睜眼"
            skill.text = "請填寫4位狼人後按下確定"
        case 2:
            job_img.image = UIImage(named: "job_wolf.jpg")
            wolf_kill_seq.text = "請決定擊殺目標"
            skill.text = "擊殺目標為: 號玩家"
        case 3:
            job_img.image = UIImage(named: "prophet.jpg")
            wolf_kill_seq.text = "預言家請睜眼"
            skill.text = "請填寫預言家後按下確定"
        case 4:
            job_img.image = UIImage(named: "prophet.jpg")
            wolf_kill_seq.text = "請決定查驗對象"
            skill.text = "查驗對象為: 號玩家"
        case 5:
            job_img.image = UIImage(named: "witch.jpg")
            wolf_kill_seq.text = "女巫請睜眼"
            skill.text = "請填寫女巫後按下確定"
        case 6:
            job_img.image = UIImage(named: "witch.jpg")
            wolf_kill_seq.text = "解藥請直接按下確定,毒藥請點選號碼後按下確定"
            wolf_kill_seq.font = UIFont.systemFont(ofSize: 18.0)
            skill.text = "死亡玩家為:" + String(calcu_job[4]) + "號玩家"
        case 7:
            job_img.image = UIImage(named: "hunter.jpg")
            wolf_kill_seq.font = UIFont.systemFont(ofSize: 25.0)
            wolf_kill_seq.text = "獵人請睜眼"
            skill.text = ""
        case 8:
            job_img.image = UIImage(named: "moron.jpg")
            wolf_kill_seq.text = "白痴請睜眼"
            skill.text = ""
        default:
            step = 0
            selecnum1.removeAll()
            selecnum = 0
            let vc = storyboard?.instantiateViewController(withIdentifier: "Result") as! Result_view
            vc.calcu_res = calcu_job
            vc.board = board
            present(vc, animated: true, completion: nil)
            calcu_job.removeAll()
            break
        }
       }
    func general_2(dis : Int){
     switch dis {
     case 1:
         job_img.image = UIImage(named: "urchin.jpg")
         wolf_kill_seq.text = "混子請睜眼"
         skill.text = "請填寫混子後按下確定"
     case 2:
         job_img.image = UIImage(named: "urchin.jpg")
         wolf_kill_seq.text = "請決定學習對象"
         skill.text = "學習目標為: 號玩家"
     case 3:
        job_img.image = UIImage(named: "job_wolf.jpg")
        wolf_kill_seq.text = "狼人請睜眼"
        skill.text = "請填寫4位狼人後按下確定"
     case 4:
        job_img.image = UIImage(named: "job_wolf.jpg")
        wolf_kill_seq.text = "請決定擊殺目標"
        skill.text = "擊殺目標為: 號玩家"
     case 5:
        job_img.image = UIImage(named: "prophet.jpg")
        wolf_kill_seq.text = "預言家請睜眼"
        skill.text = "請填寫預言家後按下確定"
     case 6:
        job_img.image = UIImage(named: "prophet.jpg")
        wolf_kill_seq.text = "請決定查驗對象"
        skill.text = "查驗對象為: 號玩家"
     case 7:
        job_img.image = UIImage(named: "witch.jpg")
        wolf_kill_seq.text = "女巫請睜眼"
        skill.text = "請填寫女巫後按下確定"
     case 8:
        job_img.image = UIImage(named: "witch.jpg")
        wolf_kill_seq.text = "解藥請直接按下確定,毒藥請點選號碼後按下確定"
        wolf_kill_seq.font = UIFont.systemFont(ofSize: 18.0)
        skill.text = "死亡玩家為:" + String(calcu_job[6]) + "號玩家"
     case 9:
        job_img.image = UIImage(named: "hunter.jpg")
        wolf_kill_seq.font = UIFont.systemFont(ofSize: 25.0)
        wolf_kill_seq.text = "獵人請睜眼"
        skill.text = ""
     case 10:
        job_img.image = UIImage(named: "moron.jpg")
        wolf_kill_seq.text = "白痴請睜眼"
        skill.text = ""
     default:
        step = 0
        selecnum1.removeAll()
        selecnum = 0
        let vc = storyboard?.instantiateViewController(withIdentifier: "Result") as!Result_view
        vc.calcu_res = calcu_job
        vc.board = board
        present(vc, animated: true, completion: nil)
        calcu_job.removeAll()
        break
     }
    }
    
    
    @IBAction func decide_btn(_ sender: Any) {
        backgray(select_num : 1)
        if board == 1{
            if step == 1 {
                if selecnum1.count < 4 {
                    selecnum1.removeAll()
                    let controller = UIAlertController(title: "選擇錯誤", message:"" , preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                }
                else{
                    for i in selecnum1{
                        calcu_job.append(i)
                    }
                    self.viewWillAppear(true)
                }
            }
            else if step == 4{
                let identity = propher_skill(num : selecnum)
                let controller = UIAlertController(title: "你選擇的玩家身份為:" + identity, message:"" , preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default){(_) in
                    self.viewWillAppear(true)
                }
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            }
            else if step == 6{
                calcu_job.append(selecnum)
                self.viewWillAppear(true)
            }else if step == 7{
                calcu_job.append(selecnum)
                let identity = hunter_skill(num : selecnum)
                let controller = UIAlertController(title:identity, message:"" , preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default){(_) in
                    self.viewWillAppear(true)
                }
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            }
            else {
                if selecnum == 0{
                    let controller = UIAlertController(title: "選擇錯誤", message:"" , preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                }else{
                    print(check_job(num : selecnum))
                    if check_job(num : selecnum){
                        calcu_job.append(selecnum)
                        self.viewWillAppear(true)
                    }else{
                        let controller = UIAlertController(title: "重複選擇職業", message:"" , preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                        controller.addAction(okAction)
                        present(controller, animated: true, completion: nil)
                    }
                    
                }
            }
        }
        if board == 2{
            if step == 3 {
                if selecnum1.count < 4 {
                    selecnum1.removeAll()
                    let controller = UIAlertController(title: "選擇錯誤", message:"" , preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                }
                else{
                    var check_wolf = true
                    for i in selecnum1{
                        if !check_job(num: i){ check_wolf = false}
                    }
                    if check_wolf{
                        for i in selecnum1{
                            calcu_job.append(i)
                        }
                        self.viewWillAppear(true)
                    }else{
                        selecnum1.removeAll()
                        let controller = UIAlertController(title: "重複選擇職業", message:"" , preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                        controller.addAction(okAction)
                        present(controller, animated: true, completion: nil)
                    }
                    
                    
                }

            }
            else if step == 6{
                let identity = propher_skill(num : selecnum)
                let controller = UIAlertController(title: "你選擇的玩家身份為:" + identity, message:"" , preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default){(_) in
                    self.viewWillAppear(true)
                }
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            } else if step == 8{
                calcu_job.append(selecnum)
                self.viewWillAppear(true)
            }else if step == 9{
                calcu_job.append(selecnum)
                let identity = hunter_skill(num : selecnum)
                let controller = UIAlertController(title:identity, message:"" , preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default){(_) in
                    self.viewWillAppear(true)
                }
                controller.addAction(okAction)
                present(controller, animated: true, completion: nil)
            }
            else {
                if selecnum == 0{
                    let controller = UIAlertController(title: "選擇錯誤", message:"" , preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                    controller.addAction(okAction)
                    present(controller, animated: true, completion: nil)
                }else{
                    print(check_job(num : selecnum))
                    if check_job(num : selecnum){
                        calcu_job.append(selecnum)
                        self.viewWillAppear(true)
                    }else{
                        let controller = UIAlertController(title: "重複選擇職業", message:"" , preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .default ,handler: nil )
                        controller.addAction(okAction)
                        present(controller, animated: true, completion: nil)
                    }
                    
                }
            }
        }
    }
    
    @IBAction func back(_ sender: Any) {
        print("back:",step)
        if step != 1{
            if step == 2 { calcu_job.removeAll()}
            else { calcu_job.remove(at: step)}
            step = step - 2
            self.viewWillAppear(true)
        }
    }
    
    @IBAction func selectRoleButtonPressed(_ sender: UIButton) {
        backgray(select_num: 0)
        if board == 1{
            if step == 1 {
                if selecnum1.count < 4 && sender.tag != 2 {
                    if check_btn(num : Int(sender.currentTitle!)!){
                        selecnum1.append(Int(sender.currentTitle!)!)
                    }
                    sender.backgroundColor = click_on
                }
            }else{
                 if sender.tag != 2{
                    if step == 2 { skill.text = "擊殺目標為:" + sender.currentTitle! + "號玩家"}
                    if step == 4 { skill.text = "查驗對象為:" + sender.currentTitle! + "號玩家"}
                    selecnum = Int(sender.currentTitle!)!
                    sender.backgroundColor = click_on
                }
            }
        }
        if board == 2{
            if step == 3 {
                if selecnum1.count < 4 && sender.tag != 2 {
                    if check_btn(num : Int(sender.currentTitle!)!){
                        selecnum1.append(Int(sender.currentTitle!)!)
                    }
                    sender.backgroundColor = click_on
                }
            }else{
                 if sender.tag != 2{
                    if step == 2 { skill.text = "學習對象為:" + sender.currentTitle! + "號玩家"}
                    if step == 4 { skill.text = "擊殺目標為:" + sender.currentTitle! + "號玩家"}
                    if step == 6 { skill.text = "查驗對象為:" + sender.currentTitle! + "號玩家"}
                    selecnum = Int(sender.currentTitle!)!
                    sender.backgroundColor = click_on
                }
            }
        }
        switch sender {
            case noselect :
                backgray(select_num : 1)
                if step == 1 && !selecnum1.isEmpty && board == 1 { selecnum1.removeAll()}
                if step == 3 && !selecnum1.isEmpty && board == 2 { selecnum1.removeAll()}
                selecnum = 0
                if step == 2 { skill.text = "擊殺目標為: 號玩家" }
                if step == 4 { skill.text = "查驗對象為: 號玩家" }
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
            if (i == 4 || i == 7) && board == 1 { continue }
            if (i == 1 || i == 6 || i == 9) && board == 2 { continue }
            i=i+1
            if num == k { return false}
        }
        return true
    }
    func backgray(select_num : Int ){
        if (step != 1 && board == 1) || (step != 3 && board == 2){
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
}
