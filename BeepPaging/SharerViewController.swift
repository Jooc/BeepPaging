//
//  SharerViewController.swift
//  BeepPaging
//
//  Created by 齐旭晨 on 2019/5/8.
//  Copyright © 2019 齐旭晨. All rights reserved.
//

import UIKit

class SharerViewController: UIViewController {

    let sharer = InfoShare()
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn{
            sharer.switchScene(to: WechatScene.SESSION)
        }else{
            sharer.switchScene(to: WechatScene.TIMELINE)
        }
    }
    
    @IBAction func onClick(_ sender: UIButton) {
        sharer.setContent(with: textView.text)
        sharer.shareInfo()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
