//
//  Door.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 2/11/23.
//

import Foundation

class Door: MapSite {
    let room1:Room
    let room2:Room
    private(set) var isOpen:Bool = false

    init(_ room1: Room,_ room2:Room) {
        self.room1 = room1
        self.room2 = room2
    }

    func otherSideFrom(room: Room) -> Room {
        return (room === room1) ? room2 : room1
    }

    override func enter(player:Player) {
        guard isOpen else {
            player.hurtNoseCount += 1
            return
        }

        otherSideFrom(room: player.location)
            .enter(player: player)
    }

    func open(player:Player) {
        isOpen = true
    }
}
