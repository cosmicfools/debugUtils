//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 16/03/2022.
//

import ModuleServices
import UIKit

class InformationModule: TableSectionModule {
    private var info: [InformationModuleRowDecorator]?
    
    override func registerClassForCells() -> [AnyClass] {
        super.registerClassForCells() + [
            UITableViewCell.classForCoder()
        ]
    }

    override func createRows() {
        super.createRows()

        if let info = info {
            rows += info
        }
    }

    func configure(info: [InformationModuleRowDecorator]) {
        self.info = info
        createRows()
    }

    override func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: UITableViewCell.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.tintColor = .black
        cell.textLabel?.numberOfLines = .zero
        guard let row = rows[indexPath.row] as? InformationModuleRowDecorator else { return cell }
        cell.textLabel?.attributedText = row.attributedText
        cell.accessoryType = .none
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    override func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
