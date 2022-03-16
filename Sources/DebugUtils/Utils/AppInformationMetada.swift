//
//  AppInformationMetadata.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 16/03/2022.
//

import Foundation

private enum Constants {
    static let bundleShortVersion = "CFBundleShortVersionString"
    static let bundleVersion = "CFBundleVersion"
    static let versionRepresentationFormat = "%@ (%@)"
}

struct AppInformationMetadata {
    let version: String
    let build: String
    let bundleID: String
    let localeId: String
    
    var fullVersionRepresentation: String {
        String(format: Constants.versionRepresentationFormat, version, build)
    }
    
    init(version: String = Bundle.main.version,
         build: String = Bundle.main.buildVersion,
         bundleID: String = Bundle.main.bundleIdentifier ?? .empty,
         localeId: String = Locale.current.identifier.replacingOccurrences(of: String.underscore, with: String.dash)) {
        self.version = version
        self.build = build
        self.bundleID = bundleID
        self.localeId = localeId
    }
}
