//
//  TextLabelConverter.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 30/10/23.
//

import Foundation
import SwiftUI

class SwiftUITextConverter: TextConverter {

    private var suText = Text(String())

    override func convertText(text:NSAttributedString) {
        let attributed = AttributedString(text)
        suText = Text(attributed)
    }

    func getText() -> Text {
        return suText
    }
}
