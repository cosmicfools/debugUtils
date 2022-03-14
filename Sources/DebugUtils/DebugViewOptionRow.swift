//
//  File.swift
//  
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit

protocol DebugViewOptionRow {
    associatedtype DebugViewOptionEnum: CaseIterable, RawRepresentable where DebugViewOptionEnum.RawValue == String
    
    var option: DebugViewOptionEnum { get }
    var accesoryType: UITableViewCell.AccessoryType { get }
    
    init(option: DebugViewOptionEnum, accesoryType: UITableViewCell.AccessoryType)
}
