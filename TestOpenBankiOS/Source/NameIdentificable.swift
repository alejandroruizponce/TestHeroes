//
//  NameIdentificable.swift
//
//
//  Created by Miguel on 28/11/16.
//
//

import Foundation

import UIKit

public protocol NameIdentifiable { }

extension NameIdentifiable where Self : NSObject {
    static var identifier: String {
        return String(describing: self)
    }
}

extension NSObject : NameIdentifiable {}
