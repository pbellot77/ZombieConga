//
//  GameScene.swift
//  ZombieConga
//
//  Created by Patrick Bellot on 1/15/17.
//  Copyright © 2017 Bell OS, LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

	override func didMove(to view: SKView) {
		
		backgroundColor = SKColor.black
		
		// create the sprite
		let background = SKSpriteNode(imageNamed: "background1")
		background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
		background.position = CGPoint(x: size.width/2, y: size.height/2)
		background.zPosition = -1
		
		let zombie = SKSpriteNode(imageNamed: "zombie1")
		zombie.position = CGPoint(x: 400, y: 400)
		zombie.setScale(2)
		
		addChild(background)
		addChild(zombie)
	}
} // end of GameScene
