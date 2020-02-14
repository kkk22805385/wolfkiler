//
//  Select_board.swift
//  wolfkiler
//
//  Created by aa on 2020/2/4.
//  Copyright © 2020 hsu. All rights reserved.
//

import UIKit

class Select_board: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var mytable: UITableView!
    var board_rule = ["預女獵白","預女獵白混","狼槍守衛","狼美人騎士","白狼王騎士","機械狼通靈師"]
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.separatorStyle = .none
        mytable.backgroundColor = UIColor(patternImage: UIImage(named: "table_bg.jpg")!)
        //mytable.separatorColor = UIColor.white
        mytable.tableFooterView = UIView(frame : CGRect.zero)
        
       // mytable.separatorInset = UIEdgeInsets
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return board_rule.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell.init()
        if indexPath.row == 0 || indexPath.row == 1{
            cell  = tableView.dequeueReusableCell(withIdentifier: "usully_cell",for: indexPath)
        }
        if indexPath.row >= 2 && indexPath.row <= 4 {
            cell  = tableView.dequeueReusableCell(withIdentifier: "wolfgun_cell",for: indexPath)
        }
        cell.textLabel?.text = board_rule[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont(name: "Helvetica-Light", size: 24)
        cell.textLabel?.shadowColor = UIColor.black
        cell.textLabel?.shadowOffset =  CGSize(width: 2, height: 2)
        cell.textLabel?.textAlignment = NSTextAlignment.center
        let view = UIView()
        view.backgroundColor=UIColor.clear
        cell.selectedBackgroundView? = view
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwind_WolfBasic" {
            if let indexPath = mytable.indexPathForSelectedRow{
                let vc = segue.destination as! WolfBasic_ViewController
                vc.board = indexPath.row + 1
            }
        }
        if segue.identifier == "unwind_WolfGun" {
            
            
            
            
            if let indexPath = mytable.indexPathForSelectedRow{
                let vc = segue.destination as! WolfGun_ViewController
                vc.board = indexPath.row + 1
            }
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if segue.identifier == "unwind_WolfBasic" {
            _ = segue.source as! WolfBasic_ViewController
        }
        if segue.identifier == "unwind_WolfGun" {
            _ = segue.source as! WolfBasic_ViewController
        }
    }
    
    
}
