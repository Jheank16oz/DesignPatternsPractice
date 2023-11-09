//
//  RTFReader.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 29/10/23.
//

import Foundation

class RTFReader {

    let converter:TextConverter
    init(converter: TextConverter) {
        self.converter = converter
    }

    func parseRTF(forResource resource: String) {
        if let rtfPath = Bundle.main.url(forResource: resource, withExtension: "rtf") {
            do {
                let attributedString = try NSAttributedString(url: rtfPath, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
                converter.convertText(text: attributedString)
            } catch {
                print("\(error.localizedDescription)")
            }
        }
    }
}
