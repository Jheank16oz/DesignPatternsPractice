//
//  Room.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 2/11/23.
//

import Foundation

class Room: MapSite {
    let roomNo: Int
    var sides:[Direction:MapSite] = [:]
    init(roomNo: Int) {
        self.roomNo = roomNo
    }

    func getSide(direction: Direction) -> MapSite? {
        return sides[direction]
    }

    func setSide(_ direction: Direction,_ site: MapSite) {
        sides[direction] = site
    }

    override func enter(player:Player) {
        player.location = self
    }

}
