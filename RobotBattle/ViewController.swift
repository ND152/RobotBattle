//
//  ViewController.swift
//  RobotBattle
//
//  Created by Noor Dene on 11/7/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        print(firstBot.robotName)
        firstBot.speed = 30
        print("Vs")
        print(firstBot.robotName)
        secondBot.speed = 40
        speedCheck(r1: firstBot, r2: secondBot)
    }


}

func speedCheck(r1: bot, r2: bot){
    // Apply 10% random offset to both stats
    let r1Offset = Double.random(in: -0.1...0.1)
    let r1OffsetSpeed = Double(r1.speed) * r1Offset
    
    let r2Offset = Double.random(in: -0.1...0.1)
    let r2OffsetSpeed = Double(r2.speed) * r2Offset
    
    if r1OffsetSpeed > r2OffsetSpeed{
        
        print("\(r1.robotName) gets the first attack.\(r1.robotName)'s speed = \(r1OffsetSpeed),\(r2.robotName)'s speed = \(r2OffsetSpeed))"
              } else if r1OffsetSpeed < r2OffsetSpeed {
        print("\(r2.robotName) gets the first attack. \(r1.robotName)'s speed = \(r1OffsetSpeed),
                  \(r2.robotName)'s speed = \(r2OffsetSpeed)")
        print("\(r1.robotName) gets the first attack.
              \(r1.robotName)'s speed = \(r1OffsetSpeed)
    } else if r1.speed < r2.speed {
        print("\(r2.robotName) gets the first attack")
    } else {
        print("the speeds tied")
    }
}
