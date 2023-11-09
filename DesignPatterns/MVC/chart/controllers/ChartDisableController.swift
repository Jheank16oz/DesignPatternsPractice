//
//  FaceRandomDisableGesturesVC.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//

import Foundation
import SwiftUI
// Response Mechanism
// Define the way the user interface reacts to user input
// class hierarchy of controller
class ChartDisableController : ChartObservableViewController {

    init() {
        super.init(model: FaceValue(), view: EmptyView())
    }
    override func randomize() {
        print("Not gestures enable")
    }
}
