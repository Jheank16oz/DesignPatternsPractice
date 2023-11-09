//
//  CompositePanelFactoryView.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 25/10/23.
//

import Foundation
import SwiftUI

class CompositePanelFactoryView {

    private let model = PanelModel()

    func create() -> PanelCompositeView {
        var view = PanelCompositeView(model: model)
        let controller = PanelVC(view: view, model: model)
        view.setController(controller: controller)
        return view
    }


}
