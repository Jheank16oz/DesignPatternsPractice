//
//  EnchantedMazeFactory.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 9/11/23.
//

import Foundation

class EnchantedMazeFactory: MazeFactory {
    private let castSpell = Spell(magicWords: "Abracadabra")

    override func makeRoom(_ roomNo: Int) -> Room {
        return EnchantedRoom(roomNo: roomNo, spell: castSpell)
    }

    override func makeDoor(r1: Room, r2: Room) -> Door {
        return DoorNeedingSpell(r1, r2)
    }
}
