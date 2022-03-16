//
//  BundleUtils.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 16/03/2022.
//

import Foundation

private enum CodingKeys: String {
    case CFBundleShortVersionString
    case CFBundleVersion
    case CFBundleExecutable
    case CFBundleURLTypes
    case CFBundleURLSchemes
}

extension Bundle {
    var version: String { infoDictionary(key: CodingKeys.CFBundleShortVersionString.rawValue) }
    var buildVersion: String { infoDictionary(key: CodingKeys.CFBundleVersion.rawValue) }
    
    var externalURLSchemes: [String] {
        guard let urlTypes = Bundle.main.infoDictionary?[CodingKeys.CFBundleURLTypes.rawValue] as? [Any],
            let urlTypeDictionary = urlTypes.first as? [String: Any],
            let urlSchemes = urlTypeDictionary[CodingKeys.CFBundleURLSchemes.rawValue] as? [String]
            else { return [] }
        
        return urlSchemes
    }
    
    func classFromString(_ className: String) -> AnyClass? {
        let namespace = infoDictionary(key: CodingKeys.CFBundleExecutable.rawValue)
        return NSClassFromString("\(namespace).\(className)")
    }
}

private extension Bundle {
    func infoDictionary(key: String) -> String {
        (infoDictionary?[key] as? String) ?? String(Int.zero)
    }
    
    func externalURLScheme() -> String? {
        guard let urlTypes = Bundle.main.infoDictionary?[CodingKeys.CFBundleURLTypes.rawValue] as? [AnyObject],
            let urlTypeDictionary = urlTypes.first as? [String: AnyObject],
            let urlSchemes = urlTypeDictionary[CodingKeys.CFBundleURLSchemes.rawValue] as? [AnyObject],
            let externalURLScheme = urlSchemes.first as? String else { return nil }

        return externalURLScheme
    }
}
