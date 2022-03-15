//
//  File.swift
//
//
//  Created by Francisco Javier Trujillo Mata on 14/03/2022.
//

import Foundation
import UIKit
import ModuleServices

class InformationDebugViewController: ModulesViewController {
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: Bundle.module)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupStyle() {
        super.setupStyle()
        
        tableView?.tableFooterView = UIView(frame: .zero)
        tableView?.backgroundColor = .white
        view.backgroundColor = .white
        title = L10n.informationDebugViewControllerTitle
    }
    
    override func createModules() {
        super.createModules()
        
        loadInfomationModule()
    }
}

// MARK: - Private Methods
private extension InformationDebugViewController {
    func loadInfomationModule() {
    }
}
