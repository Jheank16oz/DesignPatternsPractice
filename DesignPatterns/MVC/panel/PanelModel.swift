//
//  PanelModel.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//

import Foundation

class PanelModel:ObservableObject, Identifiable {
    //let id = UUID()
    @Published var enableGestures:Bool = true
//    @Published var c:Double
//
//    init(a: Double, b: Double, c: Double) {
//        self.a = a
//        self.b = b
//        self.c = c
//    }
}
