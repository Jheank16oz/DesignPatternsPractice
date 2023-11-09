//
//  Player.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 3/11/23.
//

import Foundation

class Player: CustomStringConvertible{


    var location:Room?
    var hurtNoseCount:Int = 0

    init(location: Room? = nil, hurtNoseCount: Int = 0) {
        self.location = location
        self.hurtNoseCount = hurtNoseCount
    }

    var description: String {
        return "status 🚶: |📍\(location)|👃 \(hurtNoseCount)"
    }
}
