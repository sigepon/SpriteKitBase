//
//  GameViewController.swift
//  sampleGame
//
//  Created by Kikuchi Shigeo on 2016/01/20.
//  Copyright (c) 2016年 sigepon. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //640 * 1136サイズのゲームシーンを作ります
        let scene = GameScene(size:CGSize(width: 640, height: 1136))
        //Main.storyboardのViewをSKViewとしてアクセスします
        let skView = self.view as! SKView
        //画面のモードを画面サイズにフィットするように拡大縮小
        scene.scaleMode = .AspectFill
        //SKViewに表示
        skView.presentScene(scene)
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
