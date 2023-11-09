//
//  ChartObservableViewController.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//

import Foundation
import SwiftUI
// Response Mechanism
// Defines the way the user interface reacts to user input
// Class hierarchy of controller
class ChartObservableViewController: Controller, ObservableObject {
    private(set) var model: FaceValue
    private(set) var view: any View

    init(model: FaceValue, view: any View) {
        self.model = model
        self.view = view
    }

    func randomize() {
        model.a = Double.random(in: 1...100)
        model.b = Double.random(in: 1...100)
        model.c = Double.random(in: 1...100)
    }
}
