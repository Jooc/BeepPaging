//
//  InfoSharer.swift
//  BeepPaging
//
//  Created by 齐旭晨 on 2019/5/7.
//  Copyright © 2019 齐旭晨. All rights reserved.
//

import Foundation

enum WechatScene {
    case SESSION
    case TIMELINE
}

class InfoShare {
    var _scene: Int32 = Int32(WXSceneSession.rawValue)
    var content: String = ""

    func shareInfo() {
        let req = SendMessageToWXReq()
        req.bText = true
        req.scene = _scene
        req.text = content
        
        WXApi.send(req)
    }
    
    //切换分享目的场景
    func switchScene(to targetScene:WechatScene) -> Void{
        if targetScene == WechatScene.SESSION{
            _scene = Int32(WXSceneSession.rawValue)
        }
        else if targetScene == WechatScene.TIMELINE{
            _scene = Int32(WXSceneTimeline.rawValue)
        }
        else{
            print("Invalid Scene")
            return
        }
    }
    
    func setContent(with content:String) -> Void {
        self.content = content
    }
}
