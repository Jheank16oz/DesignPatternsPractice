//
//  ContentView.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 22/10/23.
//

import SwiftUI
import Charts

struct BarChartView: BaseView {

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
            Chart {
                BarMark(
                       x: .value("Shape Type", "A"),
                       y: .value("Total Count", model.a)
                   )
                BarMark(
                    x: .value("Shape Type", "B"),
                    y: .value("Total Count", model.b)
                )
                BarMark(
                    x: .value("Shape Type", "C"),
                    y: .value("Total Count", model.c)
                )
            }
            Button("Random values") {
                controller.randomize()
            }
        }
        .padding()
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        BarChartView()
    }
}
