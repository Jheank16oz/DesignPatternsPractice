//
//  DoorNeedingSpell.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 9/11/23.
//

import Foundation

class DoorNeedingSpell: Door {

    private var spell:Spell?

    func castSpell(spell:Spell) {
        self.spell = spell
    }

    override func open(player:Player) {
        guard spell != nil else {
            print("This door is enchanted and need a spell")
            return
        }

        guard let otherSideRoom = otherSideFrom(room: player.location) as? EnchantedRoom else {
            return
        }

        guard otherSideRoom.spell == spell else {
            print("Oops!! thats not the correct spell")
            return
        }

        super.open(player: player)
    }

}
