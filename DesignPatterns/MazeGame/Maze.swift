//
//  Maze.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 1/11/23.
//

import Foundation

class Maze {

    private var rooms:[Room] = []

    func room(roomNumber: Int) -> Room? {
        return rooms.first{ $0.roomNo == roomNumber }
    }

    func addRoom(room:Room) {
        rooms.append(room)
    }
}
