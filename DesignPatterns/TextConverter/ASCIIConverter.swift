//
//  ASCIIConverter.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 30/10/23.
//

import Foundation

class ASCIIConverter: TextConverter {

    private var asciiText = String()

    override func convertText(text: NSAttributedString) {
        do {
            asciiText = try String(contentsOfFile: text.string, encoding: .ascii)
        } catch {
            print("Error to covert to ascii")
        }
    }

    func getASCIIText() -> String {
        return asciiText
    }
}
