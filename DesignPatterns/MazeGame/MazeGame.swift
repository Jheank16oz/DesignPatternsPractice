//
//  MazeGame.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 2/11/23.
//

import Foundation

open class MazeGame {
    var maze:Maze
    var player:Player?

    init(){
        maze = MazeGame.createMaze()
    }

    private static func createMaze() -> Maze {
        let aMaze = Maze()
        let r1 = Room(roomNo: 1)
        let r2 = Room(roomNo: 2)
        let theDoor = Door(r1, r2)

        aMaze.addRoom(room: r1)
        aMaze.addRoom(room: r2)

        r1.setSide(.north, Wall())
        r1.setSide(.east, theDoor)
        r1.setSide(.south, Wall())
        r1.setSide(.west, Wall())

        r2.setSide(.north, Wall())
        r2.setSide(.east, Wall())
        r2.setSide(.south, Wall())
        r2.setSide(.west, theDoor)

        return aMaze
    }

    private static func createMaze(factory: MazeFactory) -> Maze {
        let aMaze = factory.makeMaze()
        let r1 = factory.makeRoom(1)
        let r2 = factory.makeRoom(2)
        let aDoor = factory.makeDoor(r1: r1, r2: r2)

        aMaze.addRoom(room: r1)
        aMaze.addRoom(room: r2)

        r1.setSide(.north, factory.makeWall())
        r1.setSide(.east, aDoor)
        r1.setSide(.south, factory.makeWall())
        r1.setSide(.west, factory.makeWall())

        r2.setSide(.north, factory.makeWall())
        r2.setSide(.east, factory.makeWall())
        r2.setSide(.south, factory.makeWall())
        r2.setSide(.west, aDoor)

        return aMaze
    }

    func start() {
        guard let player else {
            return
        }
        print("A player start at room 1")
        player.location = maze.room(roomNumber: 1) ?? Room(roomNo: 0)
        go(direction: .east)
        go(direction: .north)
        openDoor(direction: .east)
        go(direction: .east)
    }


    func go(direction:Direction) {
        guard let player else {
            return
        }
        print(direction)
        if let side = player.location.getSide(direction: direction) {
            side.enter(player: player)
            print(side)
        }
        print(player)
    }
    func openDoor(direction:Direction) {
        guard let player else {
            return
        }

        if let door = player.location.getSide(direction: .east)  as? Door {
            door.open()
            print(door)
        }
    }
}

extension Direction:CustomStringConvertible{
    var description: String {
        switch self {
        case .north:
            return "go north ⬆️"
        case .south:
            return "go south ⬇️"
        case .east:
            return "go east ➡️"
        case .west:
            return "go west ⬅️"
        }
    }
}

extension MapSite : CustomStringConvertible {
    var description: String {
        switch self {
        case is Room:
            return "🏡 room \(String(describing: (self as? Room)?.roomNo))"
        case is Wall:
            return "🧱 wall"
        case is Door:
            let door =  (self as? Door)
            return (door?.isOpen ?? false) ?"🚪🔓":"🚪🔐"
        default:
            return ""
        }
    }


}
