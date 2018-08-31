//
//  Ball.swift
//  learningPhysics
//
//  Created by Michał Kurkowski on 26/08/2018.
//  Copyright © 2018 kura. All rights reserved.
//

import Foundation
import SpriteKit




class BallWrapper{
  
  var ball: SKShapeNode
  init(circleOfRadius: CGFloat ){
    self.ball = SKShapeNode(circleOfRadius: circleOfRadius)
    self.ball.physicsBody = SKPhysicsBody.ballBody(size: self.ball.frame.size)
    self.ball.position = CGPoint(x: drand48() * 400 - 200, y: drand48() * 1000)
    let color = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1)
    self.ball.fillColor = color
    self.ball.strokeColor = color
    self.ball.name = "ball"
  }
  
  
}
