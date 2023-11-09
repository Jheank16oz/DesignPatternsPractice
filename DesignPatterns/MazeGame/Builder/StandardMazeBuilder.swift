//
//  StandardMazeBuilder.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 1/11/23.
//

import Foundation
class StandardMazeBuilder:MazeBuilder {

    var currentMaze: Maze?

    override func buildMaze() {
        currentMaze = Maze()
    }
    override func getMaze() -> Maze? {
        return currentMaze
    }

    override func buildRoom(room: Int) {
        //if (currentMaze )
    }

}
