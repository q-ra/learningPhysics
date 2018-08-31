//
//  extension.swift
//  learningPhysics
//
//  Created by Michał Kurkowski on 25/08/2018.
//  Copyright © 2018 kura. All rights reserved.
//

import Foundation
import SpriteKit

extension SKPhysicsBody {
  static func brickBody(size: CGSize) -> SKPhysicsBody {
    let physicsBody = SKPhysicsBody(rectangleOf: size)
    physicsBody.affectedByGravity = true
    physicsBody.isDynamic = true
    physicsBody.mass = 0.8
    physicsBody.linearDamping = 0.1
    physicsBody.angularDamping = 0.1
    physicsBody.collisionBitMask = 0x1
    physicsBody.categoryBitMask = 0x1
    physicsBody.friction = 0.3
    physicsBody.restitution = 0.8
    physicsBody.contactTestBitMask = physicsBody.collisionBitMask
    return physicsBody

  }
  
  static func ballBody(size: CGSize) -> SKPhysicsBody {
    let physicsBody = SKPhysicsBody(rectangleOf: size)
    physicsBody.affectedByGravity = true
    physicsBody.isDynamic = true
    physicsBody.mass = 0.2
    physicsBody.friction = 0.5
    physicsBody.restitution = 1
    physicsBody.linearDamping = 0.2
    physicsBody.angularDamping = 0.2
    physicsBody.collisionBitMask = 0x1
    physicsBody.categoryBitMask = 0x1
    physicsBody.contactTestBitMask = physicsBody.collisionBitMask

    return physicsBody
    
  }
}
