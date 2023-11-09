//
//  MVCMethodFactory.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 24/10/23.
//

import Foundation
protocol MVCMethodFactory {
    var model:any Model { get }
    var defaultController: any Controller { get set}
    func create()
}
