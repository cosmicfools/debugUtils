//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit
import ModuleServices

class DebugViewOptionModule<ModuleRow: DebugViewOptionRow>: TableSectionModule {
    private var defaultAccesory: UITableViewCell.AccessoryType = .none
    weak var delegate: DebugViewOptionModuleDelegate?
    
    func configure(defaultAccesory: UITableViewCell.AccessoryType) {
        self.defaultAccesory = defaultAccesory
        
        createRows()
    }
    
    override func registerClassForCells() -> [AnyClass] {
        super.registerClassForCells() + [
            UITableViewCell.classForCoder()
        ]
    }
    
    override func createRows() {
        super.createRows()
        
        rows += ModuleRow.DebugViewOptionEnum.allCases.map { ModuleRow(option: $0, accesoryType: defaultAccesory) }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: UITableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.tintColor = .black
        cell.textLabel?.numberOfLines = .zero
        if let row = rows[indexPath.row] as? ModuleRow {
            cell.textLabel?.text = row.option.rawValue
            cell.accessoryType = row.accesoryType
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        if  let row = rows[indexPath.row] as? ModuleRow {
            delegate?.debugViewOptionModule(self, didSelectOption: row.option)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

protocol DebugViewOptionModuleDelegate: AnyObject {
    func debugViewOptionModule<T: DebugViewOptionRow, DebugViewOptionEnum>(_ module: DebugViewOptionModule<T>,
                                                                           didSelectOption option: DebugViewOptionEnum)
}
