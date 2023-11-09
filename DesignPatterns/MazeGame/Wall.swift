//
//  Wall.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 2/11/23.
//

import Foundation
class Wall: MapSite {

    override func enter(player:Player) {
        player.hurtNoseCount += 1
    }
}
