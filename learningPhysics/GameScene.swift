//
//  GameScene.swift
//  learningPhysics
//
//  Created by kura on 24/08/2018.
//  Copyright © 2018 kura. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
  private var label : SKLabelNode?
  private var ballLabel : SKLabelNode?
  private var brick : SKSpriteNode?
  
  override func didMove(to view: SKView) {
    self.label = self.childNode(withName: "//dropLabel") as? SKLabelNode
    self.ballLabel = self.childNode(withName: "//ballLabel") as? SKLabelNode
    
    self.brick = self.childNode(withName: "//brick") as? SKSpriteNode
    
    let framePhysics = SKPhysicsBody(edgeLoopFrom: self.frame)
    framePhysics.friction = 0.2
    framePhysics.restitution = 0.6
    self.physicsBody = framePhysics
  }
  
  
  
  func touchDown(atPoint pos : CGPoint) {
  }
  
  func touchMoved(toPoint pos : CGPoint) {
  }
  
  func touchUp(atPoint pos : CGPoint) {
    
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    for t in touches {
      if self.nodes(at: t.location(in: self)).contains(self.label!) {
        self.label!.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        self.brick!.physicsBody = SKPhysicsBody.brickBody(size: self.brick!.size)
      }
      
      if self.nodes(at: t.location(in: self)).contains(self.ballLabel!) {
        let ball = BallWrapper(circleOfRadius: 30).ball
        self.addChild(ball)
      }
      
    }
  }
  
  override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
  }
  
  override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
  }
  
  
  override func update(_ currentTime: TimeInterval) {
    // Called before each frame is rendered
  }
}
