//
//  BarChartViewFactory.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//

import Foundation

class BarChartViewFactory {

    func create(model: FaceValue) -> BarChartView {
        var view = BarChartView()
        let controller = ChartObservableViewController(model: model, view: view)
        view.setController(controller: controller)
        view.setModel(model: model)
        return view
    }
}
