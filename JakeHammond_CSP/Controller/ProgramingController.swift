//
//  ProgramingController.swift
//  JakeHammond_CSP
//
//  Created by Hammond, Jacob on 11/8/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgramingController: UIViewController
{
    //MARK: UI Components
    
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
        
    }
    
//    override func didRecieveMemoryWarning()
//    {
//        super.didRecieveMemoryWarning()
//    }
}
