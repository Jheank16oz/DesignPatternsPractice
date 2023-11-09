//
//  DesignPatternsApp.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 22/10/23.
//

import SwiftUI

@main
struct DesignPatternsApp: App {


    var body: some Scene {
        WindowGroup {
            VStack{
                makeText()
            }
        }
    }

    func makeText() -> Text {
        let converter = SwiftUITextConverter()
        //let reader = RTFReader(converter: converter)
       // reader.parseRTF(forResource: "document")


        MazeGame().start()
        return converter.getText()
    }



}
