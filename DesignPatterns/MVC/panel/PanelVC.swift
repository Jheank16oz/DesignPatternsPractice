//
//  PanelVC.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//

import Foundation
import SwiftUI
// Response Mechanism
// Define the way the user interface reacts to user input
// class hierachy of controller
class PanelVC : Controller {
    var model: PanelModel?
    var view: PanelCompositeView?

    init(view: PanelCompositeView?, model: PanelModel) {
        self.view = view
        self.model = model

        initializeViews()
    }

    private func initializeViews() {
        let sharedModel = FaceValue(a: 50, b: 30, c: 20)
        view?.stack = (BarChartViewFactory().create(model: sharedModel),
                      PieChartViewFactory().create(model: sharedModel),
                      TableChartViewFactory().create(model: sharedModel))
    }

    func disableTapGestures() {
        let disableController = ChartDisableController()
        view?.stack?.0.controller = disableController
        view?.stack?.1.controller = disableController
        view?.stack?.2.controller = disableController
    }








}
