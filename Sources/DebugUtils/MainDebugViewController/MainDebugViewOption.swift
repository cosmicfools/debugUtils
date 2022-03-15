//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit

enum MainDebugViewOption: String, CaseIterable {
    case Information
    case Configuration
    case CurrentConfig = "Current Config"
    case Dependencies
    case Clean
    case Flex
    case FlexDebugView
    case Requests
    case Storybook
    case Capabilities
    case Deeplinks
    case ThemeColor = "Color Customisation"
    case FeatureFlags = "Feature Flags"
}

struct MainDebugViewOptionModuleRow: DebugViewOptionRow {
    var option: MainDebugViewOption
    var accesoryType: UITableViewCell.AccessoryType
}

class MainDebugViewOptionModule: DebugViewOptionModule<MainDebugViewOptionModuleRow> {}
