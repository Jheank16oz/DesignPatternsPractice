//
//  Door.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 2/11/23.
//

import Foundation

class Door: MapSite {
    private let room1:Room
    private let room2:Room
    private(set) var isOpen:Bool = false

    init(room1: Room, room2:Room) {
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

        if let location = player.location {
            otherSideFrom(room: location)
                .enter(player: player)
        }
    }

    func open() {
        isOpen = true
    }
}
