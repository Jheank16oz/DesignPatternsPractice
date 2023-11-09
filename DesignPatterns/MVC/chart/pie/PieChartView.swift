//
//  PieChartView.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 22/10/23.
//

import Foundation
import SwiftUI
import Charts
import Combine

struct PieChartView: BaseView {

    @ObservedObject var model: FaceValue = FaceValue()
    @ObservedObject var controller: ChartObservableViewController = ChartDisableController()

    mutating func setController(controller: ChartObservableViewController) {
        self.controller = controller
    }

    mutating func setModel(model: FaceValue) {
        self.model = model
    }

    var body: some SwiftUI.View {
        Canvas { context, size in
            let slices: [(Double, Color)] = [(model.a,.red), (model.b,.blue), (model.c,.yellow)]
            let total = slices.reduce(0) { $0 + $1.0 }
            context.translateBy(x: size.width * 0.5, y: size.height * 0.5)
            var pieContext = context
            pieContext.rotate(by: .degrees(-90))
            let radius = min(size.width, size.height) * 0.48
            var startAngle = Angle.zero
            for (value, color) in slices {
                let angle = Angle(degrees: 360 * (value / total))
                let endAngle = startAngle + angle
                let path = Path { p in
                    p.move(to: .zero)
                    p.addArc(center: .zero, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
                    p.closeSubpath()
                }
                pieContext.fill(path, with: .color(color))
                startAngle = endAngle
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieChartView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        PieChartView()
    }
}
