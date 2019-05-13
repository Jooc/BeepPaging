//
//  MomentsTableViewController.swift
//  BeepPaging
//
//  Created by 齐旭晨 on 2019/5/8.
//  Copyright © 2019 齐旭晨. All rights reserved.
//

import UIKit

class MomentsTableViewController: UITableViewController {
    
    var jsonData = JSON.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tableView.rowHeight = UITableView.automaticDimension
        
        readJson()

        print(jsonData)
        print("#############did Load")
//        print(jsonData["moments"][0]["content"])

        tableView.register(UINib.init(nibName: "SingleMomentTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "SingleMomentCell")
        
//        tableView.register(SingleMomentTableViewCell.self, forCellReuseIdentifier: "SingleMomentCell")
    }

    func readJson() ->  Void{
        let path = Bundle.main.path(forResource: "Moments", ofType: "json")
        
        let url = URL(fileURLWithPath: path!)
        
        do{
            let data = try Data(contentsOf: url)
            jsonData = try JSON(data: data)
            
        }catch let error as Error?{
            print("Invalid JSON File Position", error!)
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {return 1}
        else {return jsonData["moments"].count}
        
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        if section == 0{return "HOSTS"}
//        else {return "MOMENTS"}
//
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "HostCell",for: indexPath)
            
            let wallPaperImageView = cell.viewWithTag(1) as! UIImageView
            wallPaperImageView.image = UIImage(contentsOfFile: Bundle.main.path(forResource: "wall_paper", ofType: "jpg")!)
            
            let hostAvatarImageView = cell.viewWithTag(2) as! UIImageView
            let hostAvatarPath = jsonData["avatar"].string
            hostAvatarImageView.image = UIImage(contentsOfFile: Bundle.main.path(forResource: hostAvatarPath, ofType: "jpg")!)
            
            hostAvatarImageView.layer.masksToBounds = true
            hostAvatarImageView.layer.cornerRadius = hostAvatarImageView.frame.width/8
            hostAvatarImageView.layer.borderWidth = 1
            hostAvatarImageView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            
            let hostNameLabel = cell.viewWithTag(3) as! UILabel
            hostNameLabel.text = "Nico"
            
            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "SingleMomentCell", for: indexPath) as! SingleMomentTableViewCell
            
            return cell
        }
    }
    
}
