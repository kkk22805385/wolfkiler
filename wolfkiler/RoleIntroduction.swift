//
//  RoleIntroduction.swift
//  wolfkiler
//
//  Created by aa on 2020/1/17.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class RoleIntroduction: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var job_lab: UILabel!
    @IBOutlet weak var backview: UIView!
    @IBOutlet weak var mytable: UITableView!
    var god = ["預言家","女巫","獵人","守衛","白痴","禁言長老","獵魔人","丘比特","騎士","通靈師","守墓人","黑市商人","魔術師","攝夢人"]
    var god_desc = ["林書豪","吳永倫","田壘","林志傑"]
    var god_img = [UIImage(named:"prophet.jpg")!,UIImage(named:"witch.jpg")!,UIImage(named:"hunter.jpg")!,UIImage(named:"guard.jpg")!,UIImage(named:"moron.jpg")!]
    var wolf = ["狼人","白狼王","種狼","石像鬼","惡靈騎士","狼美人","狼兄","狼弟","隱狼","血月使者","機械狼","狼槍","邪惡商人","夢魘"]
    var wolf_desc = ["",""]
    var common = ["平民","老流氓","野孩子"]
    var common_desc = ["",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.separatorStyle = .none
        mytable!.register(UINib(nibName: "RI_tvcell", bundle: nil), forCellReuseIdentifier: "cell")

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return god.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :RI_tvcell = tableView.dequeueReusableCell(withIdentifier: "cell") as! RI_tvcell
        cell.role_lab1?.text = god[indexPath.row]
        cell.role_lab1.textColor = UIColor.brown
        //cell.role_textview?.text = baseball[indexPath.row]
        cell.role_textview.isSelectable = false
        cell.role_textview.textColor = UIColor.orange
        if god_img.count > indexPath.row{
            cell.role_img.image = god_img[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    
}
