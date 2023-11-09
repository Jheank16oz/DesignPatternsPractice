//
//  PanelCompositeView.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 23/10/23.
//
import Foundation
import SwiftUI
import Charts
import Foundation
// CompositeView act just like View objects; a composite view can be
// used whenever a view can be used, but it also contains and manges
// nested views.
struct PanelCompositeView: BaseView {
    var controller: PanelVC = PanelPreviewVC()
    @ObservedObject var model: PanelModel

    mutating func setController(controller: PanelVC) {
        self.controller = controller
    }

    mutating func setModel(model: PanelModel) {
        self.model = model
    }

    var stack:(BarChartView,PieChartView,TableChartView)?
    var body: some SwiftUI.View {
        VStack {
            Button("Disable User Tap Gestures") {
                controller.disableTapGestures()
            }
            HStack {
                stack?.0
                Spacer()
                stack?.1
                Spacer()
                stack?.2
            }
        }

        .padding()
    }
}

struct PanelCompositeView_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        PanelCompositeView(model: PanelModel())
    }
}
