class MazeFactory {
    func makeMaze() -> Maze {
        return Maze()
    }

    func makeWall() -> Wall {
        return Wall()
    }

    func makeRoom(_ roomNo: Int) -> Room {
        return Room(roomNo: roomNo)
    }

    func makeDoor(r1: Room, r2: Room) -> Door {
        return Door(room1: r1, room2: r2)
    }
}
