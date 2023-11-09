//
//  Model.swift
//  DesignPatterns
//
//  Created by Jhean Carlos Pineros Diaz on 24/10/23.
//

import Foundation
import SwiftUI

protocol View {
    associatedtype Model
    associatedtype Controller

    var controller: Controller { get }
    var model: Model { get }

    mutating func setController(controller: Controller)
}

protocol Controller {
    associatedtype Model
    associatedtype View

    var model: Model { get }
    var view: View { get }
}

protocol BaseView : View, SwiftUI.View { }

extension EmptyView: View {
    typealias Model = AnyObject
    typealias Controller = AnyObject

    var controller: Controller {
        return String() as AnyObject
    }
    var model: Model {
        return String() as AnyObject
    }

    mutating func setController(controller: any Controller) { }
}

