//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 16/03/2022.
//

import Foundation

struct InformationModuleRowDecorator {
    private let key: String
    private let value: String
    
    var attributedText: NSAttributedString {
        [
            attrKey,
            attrValue,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
    init(key: String, value: String) {
        self.key = key
        self.value = value
    }
}

// MARK: - Private Methods
private extension InformationModuleRowDecorator {
    var keyAttributes: [NSAttributedString.Key: Any] {
        [:]
    }
    var valueAttributes: [NSAttributedString.Key: Any] {
        [:]
    }
    
    var attrKey: NSAttributedString { .init(string: "\(key): ", attributes: keyAttributes) }
    var attrValue: NSAttributedString { .init(string: value, attributes: valueAttributes) }
}
