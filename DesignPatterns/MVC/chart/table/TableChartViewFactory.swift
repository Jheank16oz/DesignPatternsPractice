//
//  TableChartViewFactory.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 26/10/23.
//

import Foundation

class TableChartViewFactory {

    func create(model: FaceValue) -> TableChartView {
        var view = TableChartView(model: model)
        let controller = ChartDisableController()
        view.setController(controller: controller)
        view.setModel(model: model)
        return view
    }
}
