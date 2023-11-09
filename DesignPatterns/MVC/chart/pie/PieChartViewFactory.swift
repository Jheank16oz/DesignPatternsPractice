//
//  PieChartViewFactory.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 25/10/23.
//

import Foundation

class PieChartViewFactory {

    func create(model: FaceValue) -> PieChartView {
        var view = PieChartView()
        let controller = ChartDisableController()
        view.setController(controller: controller)
        view.setModel(model: model)
        return view
    }
}
