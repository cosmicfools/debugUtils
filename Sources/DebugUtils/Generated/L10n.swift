//
//  File.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 15/03/2022.
//

import Foundation

// This file shouldn't exists, but till swiftgen can be used with SPM, I will generate manually
struct L10n {
    static let mainDebugViewControllerTitle = trans("MainDebugViewController::Title")
    static let informationDebugViewControllerTitle = trans("InformationDebugViewController::Title")
}

// MARK: - Private Methods
private extension L10n {
    static func trans(_ key: String) -> String { Bundle.module.localizedString(forKey: key, value: nil, table: nil) }
}
