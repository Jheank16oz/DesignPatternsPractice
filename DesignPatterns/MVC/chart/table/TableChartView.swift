//
//  TableChartView.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 22/10/23.
//

import Foundation
import SwiftUI
import Charts
struct TableChartView: BaseView {
    @ObservedObject var model: FaceValue = FaceValue()
    @ObservedObject var controller: ChartObservableViewController = ChartDisableController()

    mutating func setController(controller: ChartObservableViewController) {
        self.controller = controller
    }

    mutating func setModel(model: FaceValue) {
        self.model = model
    }

    var body: some SwiftUI.View {
        VStack {
            let rows:[FaceValue] = [model]
            Table(rows) {
                TableColumn("A", value: \.a.description)
                TableColumn("B", value: \.b.description)
                TableColumn("C", value: \.c.description)
            }
        }
        .padding()
    }
}

struct TableChartView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        TableChartView(model: FaceValue(a: 50, b: 30, c: 20))
    }
}
