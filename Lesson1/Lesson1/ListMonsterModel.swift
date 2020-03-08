//
//  ListMonsterModel.swift
//  Lesson1
//
//  Created by Полина on 29.11.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import UIKit

final class ListMonsterModel: ObservableObject{
    @Published  var selected = 0
    
    @Published  var monsters = [
      MonsterModel(name: "Cat-Bot", description: "MEE-OW",
              iconName: "meetcatbot", weapon: .sword),
      MonsterModel(name: "Dog-Bot", description: "BOW-WOW",
              iconName: "meetdogbot", weapon: .blowgun),
      MonsterModel(name: "Explode-Bot", description: "BOOM!",
              iconName: "meetexplodebot", weapon: .smoke),
      MonsterModel(name: "Fire-Bot", description: "Will Make You Steamed",
              iconName: "meetfirebot", weapon: .ninjaStar),
      MonsterModel(name: "Ice-Bot", description: "Has A Chilling Effect",
              iconName: "meeticebot", weapon: .fire),
      MonsterModel(name: "Mini-Tomato-Bot", description: "Extremely Handsome",
              iconName: "meetminitomatobot", weapon: .ninjaStar)
    ]
}

enum Weapon {
  case blowgun, ninjaStar, fire, sword, smoke

  var image: UIImage {
    switch self {
    case .blowgun:
      return UIImage(named: "blowgun.png")!
    case .fire:
      return UIImage(named: "fire.png")!
    case .ninjaStar:
      return UIImage(named: "ninjastar.png")!
    case .smoke:
      return UIImage(named: "smoke.png")!
    case .sword:
      return UIImage(named: "sword.png")!
    }
  }
}

struct MonsterModel: Identifiable{
    let id = UUID()
    let name: String
    let description: String
    let iconName: String
    let weapon: Weapon
    
    var icon: UIImage? {
      return UIImage(named: iconName)
    }
}
