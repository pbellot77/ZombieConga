//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Patrick Bellot on 1/26/17.
//  Copyright © 2017 Bell OS, LLC. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
	
	override func didMove(to view: SKView) {
		let background = SKSpriteNode(imageNamed: "MainMenu")
		background.position = CGPoint(x: size.width/2, y: size.height/2)
		addChild(background)
	}
	
	func sceneTapped() {
		let myScene = GameScene(size: size)
		myScene.scaleMode = scaleMode
		let reveal = SKTransition.doorway(withDuration: 1.5)
		view?.presentScene(myScene, transition: reveal)
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		sceneTapped()
	}
}
