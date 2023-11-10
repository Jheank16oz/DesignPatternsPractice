//
//  EnchantedRoom.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 9/11/23.
//

import Foundation

class EnchantedRoom: Room {

    let spell: Spell
    init(roomNo: Int, spell: Spell) {
        self.spell = spell
        super.init(roomNo: roomNo)
    }


}
