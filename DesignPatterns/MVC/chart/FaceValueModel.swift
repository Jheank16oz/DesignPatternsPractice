//
//  FaceValueModel.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 22/10/23.
//

import Foundation
class FaceValue: ObservableObject, Identifiable {
    let id = UUID()
    @Published var a:Double
    @Published var b:Double
    @Published var c:Double

    init(a: Double = 0, b: Double = 0, c: Double = 0) {
        self.a = a
        self.b = b
        self.c = c
    }

}
